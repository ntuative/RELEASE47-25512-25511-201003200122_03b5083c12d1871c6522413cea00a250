package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1506:int = 9;
      
      public static const const_1524:int = 4;
      
      public static const const_1510:int = 1;
      
      public static const const_1245:int = 10;
      
      public static const const_1461:int = 2;
      
      public static const const_1222:int = 7;
      
      public static const const_1170:int = 11;
      
      public static const const_1600:int = 3;
      
      public static const const_1142:int = 8;
      
      public static const const_1377:int = 5;
      
      public static const const_1496:int = 6;
      
      public static const const_1351:int = 12;
       
      
      private var var_2038:String;
      
      private var _roomId:int;
      
      private var var_1121:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2038;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1121 = param1.readInteger();
         var_2038 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1121;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
