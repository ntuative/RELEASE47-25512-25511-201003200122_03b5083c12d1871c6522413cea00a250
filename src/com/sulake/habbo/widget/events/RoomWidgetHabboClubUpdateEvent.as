package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_218:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1692:Boolean = false;
      
      private var var_1693:int = 0;
      
      private var var_1694:int = 0;
      
      private var var_1691:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_218,param5,param6);
         var_1691 = param1;
         var_1694 = param2;
         var_1693 = param3;
         var_1692 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1693;
      }
      
      public function get periodsLeft() : int
      {
         return var_1694;
      }
      
      public function get daysLeft() : int
      {
         return var_1691;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1692;
      }
   }
}
