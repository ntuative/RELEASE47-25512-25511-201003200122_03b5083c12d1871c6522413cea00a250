package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_118;
         param1["bound_to_parent_rect"] = const_87;
         param1["child_window"] = const_868;
         param1["embedded_controller"] = const_293;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_518;
         param1["mouse_dragging_target"] = const_200;
         param1["mouse_dragging_trigger"] = const_284;
         param1["mouse_scaling_target"] = const_240;
         param1["mouse_scaling_trigger"] = const_401;
         param1["horizontal_mouse_scaling_trigger"] = const_214;
         param1["vertical_mouse_scaling_trigger"] = const_206;
         param1["observe_parent_input_events"] = const_971;
         param1["optimize_region_to_layout_size"] = const_405;
         param1["parent_window"] = const_920;
         param1["relative_horizontal_scale_center"] = const_177;
         param1["relative_horizontal_scale_fixed"] = const_106;
         param1["relative_horizontal_scale_move"] = const_307;
         param1["relative_horizontal_scale_strech"] = const_270;
         param1["relative_scale_center"] = const_818;
         param1["relative_scale_fixed"] = const_536;
         param1["relative_scale_move"] = const_941;
         param1["relative_scale_strech"] = const_815;
         param1["relative_vertical_scale_center"] = const_170;
         param1["relative_vertical_scale_fixed"] = const_114;
         param1["relative_vertical_scale_move"] = const_326;
         param1["relative_vertical_scale_strech"] = const_274;
         param1["on_resize_align_left"] = const_506;
         param1["on_resize_align_right"] = const_411;
         param1["on_resize_align_center"] = const_364;
         param1["on_resize_align_top"] = const_696;
         param1["on_resize_align_bottom"] = const_425;
         param1["on_resize_align_middle"] = const_409;
         param1["on_accommodate_align_left"] = const_930;
         param1["on_accommodate_align_right"] = const_433;
         param1["on_accommodate_align_center"] = const_545;
         param1["on_accommodate_align_top"] = const_928;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_504;
         param1["route_input_events_to_parent"] = const_357;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_991;
         param1["scalable_with_mouse"] = const_865;
         param1["reflect_horizontal_resize_to_parent"] = const_460;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_242;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
