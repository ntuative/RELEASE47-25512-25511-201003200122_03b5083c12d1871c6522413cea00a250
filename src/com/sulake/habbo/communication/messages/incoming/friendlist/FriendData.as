package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_570:String;
      
      private var var_1256:String;
      
      private var var_1255:String;
      
      private var var_1166:int;
      
      private var var_1254:int;
      
      private var var_1253:String;
      
      private var _name:String;
      
      private var var_1257:Boolean;
      
      private var var_690:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1254 = param1.readInteger();
         this.var_690 = param1.readBoolean();
         this.var_1257 = param1.readBoolean();
         this.var_570 = param1.readString();
         this.var_1166 = param1.readInteger();
         this.var_1255 = param1.readString();
         this.var_1256 = param1.readString();
         this.var_1253 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_1254;
      }
      
      public function get realName() : String
      {
         return var_1253;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1255;
      }
      
      public function get categoryId() : int
      {
         return var_1166;
      }
      
      public function get online() : Boolean
      {
         return var_690;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1257;
      }
      
      public function get lastAccess() : String
      {
         return var_1256;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
   }
}
