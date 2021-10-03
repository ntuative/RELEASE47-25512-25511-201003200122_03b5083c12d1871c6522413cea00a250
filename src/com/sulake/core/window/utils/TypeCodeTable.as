package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_564;
         param1["bitmap"] = const_501;
         param1["border"] = const_511;
         param1["border_notify"] = const_1182;
         param1["button"] = const_444;
         param1["button_thick"] = const_630;
         param1["button_icon"] = const_1349;
         param1["button_group_left"] = const_700;
         param1["button_group_center"] = const_602;
         param1["button_group_right"] = const_671;
         param1["canvas"] = const_683;
         param1["checkbox"] = const_635;
         param1["closebutton"] = const_933;
         param1["container"] = const_321;
         param1["container_button"] = const_729;
         param1["display_object_wrapper"] = const_552;
         param1["dropmenu"] = const_412;
         param1["dropmenu_item"] = const_473;
         param1["frame"] = const_302;
         param1["frame_notify"] = const_1195;
         param1["header"] = const_592;
         param1["icon"] = const_854;
         param1["itemgrid"] = const_836;
         param1["itemgrid_horizontal"] = const_445;
         param1["itemgrid_vertical"] = const_572;
         param1["itemlist"] = const_792;
         param1["itemlist_horizontal"] = const_313;
         param1["itemlist_vertical"] = const_296;
         param1["maximizebox"] = const_1381;
         param1["menu"] = const_1144;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_856;
         param1["minimizebox"] = const_1384;
         param1["notify"] = const_1300;
         param1["null"] = const_607;
         param1["password"] = const_580;
         param1["radiobutton"] = const_608;
         param1["region"] = const_448;
         param1["restorebox"] = const_1198;
         param1["scaler"] = const_983;
         param1["scaler_horizontal"] = const_1312;
         param1["scaler_vertical"] = const_1266;
         param1["scrollbar_horizontal"] = const_436;
         param1["scrollbar_vertical"] = const_703;
         param1["scrollbar_slider_button_up"] = const_848;
         param1["scrollbar_slider_button_down"] = const_1010;
         param1["scrollbar_slider_button_left"] = const_874;
         param1["scrollbar_slider_button_right"] = const_912;
         param1["scrollbar_slider_bar_horizontal"] = const_937;
         param1["scrollbar_slider_bar_vertical"] = const_939;
         param1["scrollbar_slider_track_horizontal"] = const_853;
         param1["scrollbar_slider_track_vertical"] = const_966;
         param1["scrollable_itemlist"] = const_1281;
         param1["scrollable_itemlist_vertical"] = const_475;
         param1["scrollable_itemlist_horizontal"] = const_814;
         param1["selector"] = const_565;
         param1["selector_list"] = const_513;
         param1["submenu"] = const_856;
         param1["tab_button"] = const_657;
         param1["tab_container_button"] = const_980;
         param1["tab_context"] = const_414;
         param1["tab_content"] = const_895;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_654;
         param1["input"] = const_687;
         param1["toolbar"] = const_1258;
         param1["tooltip"] = const_286;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
