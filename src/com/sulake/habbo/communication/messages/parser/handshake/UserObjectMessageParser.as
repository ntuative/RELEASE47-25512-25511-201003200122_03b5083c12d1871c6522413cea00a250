package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_570:String;
      
      private var var_2313:String;
      
      private var var_2314:int;
      
      private var var_2315:int;
      
      private var var_1309:String;
      
      private var var_1253:String;
      
      private var _name:String;
      
      private var var_516:int;
      
      private var var_902:int;
      
      private var var_2317:int;
      
      private var var_2257:int;
      
      private var var_2316:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2315;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1253;
      }
      
      public function get customData() : String
      {
         return this.var_2313;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_516;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2314;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2316;
      }
      
      public function get figure() : String
      {
         return this.var_570;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2257;
      }
      
      public function get sex() : String
      {
         return this.var_1309;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_570 = param1.readString();
         this.var_1309 = param1.readString();
         this.var_2313 = param1.readString();
         this.var_1253 = param1.readString();
         this.var_2317 = param1.readInteger();
         this.var_2316 = param1.readString();
         this.var_2314 = param1.readInteger();
         this.var_2315 = param1.readInteger();
         this.var_2257 = param1.readInteger();
         this.var_902 = param1.readInteger();
         this.var_516 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2317;
      }
      
      public function get respectLeft() : int
      {
         return this.var_902;
      }
   }
}
