package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1058:int = 0;
      
      private var var_1277:int = 0;
      
      private var var_2084:String = "";
      
      private var var_1057:int = 0;
      
      private var var_2083:String = "";
      
      private var var_2081:int = 0;
      
      private var var_1551:String = "";
      
      private var var_2086:int = 0;
      
      private var var_2087:int = 0;
      
      private var var_2082:String = "";
      
      private var var_2085:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2086 = param1;
         var_2082 = param2;
         var_1551 = param3;
         var_2084 = param4;
         var_2083 = param5;
         if(param6)
         {
            var_1277 = 1;
         }
         else
         {
            var_1277 = 0;
         }
         var_2081 = param7;
         var_2087 = param8;
         var_1057 = param9;
         var_2085 = param10;
         var_1058 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2086,var_2082,var_1551,var_2084,var_2083,var_1277,var_2081,var_2087,var_1057,var_2085,var_1058];
      }
      
      public function dispose() : void
      {
      }
   }
}
