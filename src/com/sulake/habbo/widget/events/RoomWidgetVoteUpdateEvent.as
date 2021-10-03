package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_133:String = "RWPUE_VOTE_RESULT";
      
      public static const const_123:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1129:int;
      
      private var var_1015:String;
      
      private var var_712:Array;
      
      private var var_948:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1015 = param2;
         var_948 = param3;
         var_712 = param4;
         if(var_712 == null)
         {
            var_712 = [];
         }
         var_1129 = param5;
      }
      
      public function get votes() : Array
      {
         return var_712.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1129;
      }
      
      public function get question() : String
      {
         return var_1015;
      }
      
      public function get choices() : Array
      {
         return var_948.slice();
      }
   }
}
