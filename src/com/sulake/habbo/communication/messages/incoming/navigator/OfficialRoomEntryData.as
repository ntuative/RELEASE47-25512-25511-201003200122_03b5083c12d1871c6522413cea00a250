package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1287:int = 4;
      
      public static const const_658:int = 3;
      
      public static const const_650:int = 2;
      
      public static const const_949:int = 1;
       
      
      private var var_1811:String;
      
      private var _disposed:Boolean;
      
      private var var_1807:int;
      
      private var var_1809:Boolean;
      
      private var var_893:String;
      
      private var var_824:PublicRoomData;
      
      private var var_1810:int;
      
      private var _index:int;
      
      private var var_1808:String;
      
      private var _type:int;
      
      private var var_1717:String;
      
      private var var_823:GuestRoomData;
      
      private var var_1812:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1811 = param1.readString();
         var_1812 = param1.readString();
         var_1809 = param1.readInteger() == 1;
         var_1808 = param1.readString();
         var_893 = param1.readString();
         var_1810 = param1.readInteger();
         var_1807 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_949)
         {
            var_1717 = param1.readString();
         }
         else if(_type == const_658)
         {
            var_824 = new PublicRoomData(param1);
         }
         else if(_type == const_650)
         {
            var_823 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1810;
      }
      
      public function get popupCaption() : String
      {
         return var_1811;
      }
      
      public function get userCount() : int
      {
         return var_1807;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1809;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_949)
         {
            return 0;
         }
         if(this.type == const_650)
         {
            return this.var_823.maxUserCount;
         }
         if(this.type == const_658)
         {
            return this.var_824.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1812;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_823;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1808;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_824;
      }
      
      public function get picRef() : String
      {
         return var_893;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1717;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
