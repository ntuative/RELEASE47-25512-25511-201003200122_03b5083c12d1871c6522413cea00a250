package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_655:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_655 = new ByteArray();
         var_655.writeShort(param1);
         var_655.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_655.position = 0;
         if(false)
         {
            _loc1_ = var_655.readShort();
            var_655.position = 0;
         }
         return _loc1_;
      }
   }
}
