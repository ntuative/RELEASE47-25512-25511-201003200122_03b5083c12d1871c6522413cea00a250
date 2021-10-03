package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_133:String = "RSPE_VOTE_RESULT";
      
      public static const const_123:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1129:int = 0;
      
      private var var_1015:String = "";
      
      private var var_712:Array;
      
      private var var_948:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_948 = [];
         var_712 = [];
         super(param1,param2,param7,param8);
         var_1015 = param3;
         var_948 = param4;
         var_712 = param5;
         if(var_712 == null)
         {
            var_712 = [];
         }
         var_1129 = param6;
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
