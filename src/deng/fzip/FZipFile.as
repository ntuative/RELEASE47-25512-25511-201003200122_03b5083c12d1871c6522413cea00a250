package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_641:int = 8;
      
      public static const const_1514:int = 10;
      
      public static const const_1313:int = 6;
      
      private static var var_1078:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1303:int = 0;
      
      public static const const_1505:int = 1;
      
      public static const const_1532:int = 2;
      
      public static const const_1521:int = 3;
      
      public static const const_1494:int = 4;
      
      public static const const_1516:int = 5;
      
      public static const const_1476:int = 9;
      
      public static const const_1477:int = 7;
       
      
      private var var_177:uint = 0;
      
      private var var_1079:uint = 0;
      
      private var var_739:Date;
      
      private var var_2203:int = -1;
      
      private var parseFunc:Function;
      
      private var var_522:Boolean = false;
      
      private var var_2331:int = -1;
      
      private var var_1338:uint = 0;
      
      private var var_2202:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_914:uint;
      
      private var var_21:ByteArray;
      
      private var var_737:uint;
      
      private var var_1582:Boolean = false;
      
      private var var_2332:int = -1;
      
      private var var_1580:String = "2.0";
      
      private var var_176:Boolean = false;
      
      private var var_2204:Boolean = false;
      
      private var var_358:String;
      
      private var var_610:uint = 0;
      
      private var var_1337:int = 0;
      
      private var var_432:String = "";
      
      private var var_738:int = 8;
      
      private var var_1581:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_358 = param1;
         _extraFields = new Dictionary();
         var_21 = new ByteArray();
         var_21.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_610;
      }
      
      public function set filename(param1:String) : void
      {
         var_432 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_176 && false)
         {
            var_21.position = 0;
            if(var_1078)
            {
               var_21.uncompress.apply(var_21,["deflate"]);
            }
            else
            {
               var_21.uncompress();
            }
            var_21.position = 0;
            var_176 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_432;
      }
      
      public function get date() : Date
      {
         return var_739;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1581)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_177 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_177)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1580;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_176)
         {
            uncompress();
         }
         var_21.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_21.readUTFBytes(var_21.bytesAvailable);
         }
         else
         {
            _loc3_ = var_21.readMultiByte(var_21.bytesAvailable,param2);
         }
         var_21.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_738 === const_641 && !var_1582)
         {
            if(var_1078)
            {
               param1.readBytes(var_21,0,var_177);
            }
            else
            {
               if(!var_522)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_21.writeByte(120);
               _loc2_ = uint(~var_2203 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_21.writeByte(_loc2_);
               param1.readBytes(var_21,2,var_177);
               var_21.position = var_21.length;
               var_21.writeUnsignedInt(var_914);
            }
            var_176 = true;
         }
         else
         {
            if(var_738 != const_1303)
            {
               throw new Error("Compression method " + var_738 + " is not supported.");
            }
            param1.readBytes(var_21,0,var_177);
            var_176 = false;
         }
         var_21.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1079 + var_1338 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_21.length = 0;
         var_21.position = 0;
         var_176 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_21.writeUTFBytes(param1);
            }
            else
            {
               var_21.writeMultiByte(param1,param2);
            }
            var_737 = ChecksumUtil.CRC32(var_21);
            var_522 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_739 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1337 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1337 << 8 | 20);
         param1.writeShort(var_358 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_641);
         var _loc5_:Date = var_739 != null ? var_739 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_737);
         param1.writeUnsignedInt(var_177);
         param1.writeUnsignedInt(var_610);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_358 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_432);
         }
         else
         {
            _loc8_.writeMultiByte(var_432,var_358);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_522)
            {
               _loc16_ = var_176;
               if(_loc16_)
               {
                  uncompress();
               }
               var_914 = ChecksumUtil.Adler32(var_21,0,var_21.length);
               var_522 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_914);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_358 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2202);
            }
            else
            {
               _loc8_.writeMultiByte(var_2202,var_358);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_177 > 0)
         {
            if(var_1078)
            {
               _loc13_ = 0;
               param1.writeBytes(var_21,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_21,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_177;
      }
      
      protected function compress() : void
      {
         if(!var_176)
         {
            if(false)
            {
               var_21.position = 0;
               var_610 = var_21.length;
               if(var_1078)
               {
                  var_21.compress.apply(var_21,["deflate"]);
                  var_177 = var_21.length;
               }
               else
               {
                  var_21.compress();
                  var_177 = -6;
               }
               var_21.position = 0;
               var_176 = true;
            }
            else
            {
               var_177 = 0;
               var_610 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1079 + var_1338)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_358 == "utf-8")
         {
            var_432 = param1.readUTFBytes(var_1079);
         }
         else
         {
            var_432 = param1.readMultiByte(var_1079,var_358);
         }
         var _loc2_:uint = var_1338;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_432 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_914 = param1.readUnsignedInt();
               var_522 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1337 = _loc2_ >> 8;
         var_1580 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_738 = param1.readUnsignedShort();
         var_1582 = (_loc3_ & 1) !== 0;
         var_1581 = (_loc3_ & 8) !== 0;
         var_2204 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_358 = "utf-8";
         }
         if(var_738 === const_1313)
         {
            var_2332 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2331 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_738 === const_641)
         {
            var_2203 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_739 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_737 = param1.readUnsignedInt();
         var_177 = param1.readUnsignedInt();
         var_610 = param1.readUnsignedInt();
         var_1079 = param1.readUnsignedShort();
         var_1338 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_21,0,param1.length);
            var_737 = ChecksumUtil.CRC32(var_21);
            var_522 = false;
         }
         else
         {
            var_21.length = 0;
            var_21.position = 0;
            var_176 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_432 + "\n  date:" + var_739 + "\n  sizeCompressed:" + var_177 + "\n  sizeUncompressed:" + var_610 + "\n  versionHost:" + var_1337 + "\n  versionNumber:" + var_1580 + "\n  compressionMethod:" + var_738 + "\n  encrypted:" + var_1582 + "\n  hasDataDescriptor:" + var_1581 + "\n  hasCompressedPatchedData:" + var_2204 + "\n  filenameEncoding:" + var_358 + "\n  crc32:" + var_737.toString(16) + "\n  adler32:" + var_914.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_176)
         {
            uncompress();
         }
         return var_21;
      }
   }
}
