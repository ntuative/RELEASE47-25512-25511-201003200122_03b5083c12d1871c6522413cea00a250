package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2328:Boolean;
      
      private var var_2329:int;
      
      private var var_2330:Boolean;
      
      private var var_1461:String;
      
      private var var_1253:String;
      
      private var var_1634:int;
      
      private var var_1874:String;
      
      private var var_2327:String;
      
      private var var_1873:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1634 = param1.readInteger();
         this.var_1461 = param1.readString();
         this.var_1874 = param1.readString();
         this.var_2328 = param1.readBoolean();
         this.var_2330 = param1.readBoolean();
         param1.readString();
         this.var_2329 = param1.readInteger();
         this.var_1873 = param1.readString();
         this.var_2327 = param1.readString();
         this.var_1253 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1253;
      }
      
      public function get avatarName() : String
      {
         return this.var_1461;
      }
      
      public function get avatarId() : int
      {
         return this.var_1634;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2328;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2327;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1873;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2330;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1874;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2329;
      }
   }
}
