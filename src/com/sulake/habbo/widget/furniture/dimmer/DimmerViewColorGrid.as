package com.sulake.habbo.widget.furniture.dimmer
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   
   public class DimmerViewColorGrid
   {
       
      
      private var var_750:BitmapData;
      
      private var _view:DimmerView;
      
      private var var_525:BitmapData;
      
      private var var_1365:XML;
      
      private var var_311:IWindowContainer;
      
      private var var_438:IItemGridWindow;
      
      private var var_923:BitmapData;
      
      public function DimmerViewColorGrid(param1:DimmerView, param2:IItemGridWindow, param3:IHabboWindowManager, param4:IAssetLibrary)
      {
         super();
         _view = param1;
         var_438 = param2;
         storeAssets(param4);
         populate(param3);
      }
      
      private function populateColourGrid(param1:IHabboWindowManager) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var_438.destroyGridItems();
         var_311 = null;
         for each(_loc2_ in colors)
         {
            _loc3_ = param1.buildFromXML(var_1365) as IWindowContainer;
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onClick);
            _loc3_.background = true;
            _loc3_.color = 4294967295;
            _loc3_.width = var_525.width;
            _loc3_.height = var_525.height;
            var_438.addGridItem(_loc3_);
            _loc4_ = _loc3_.findChildByTag("BG_BORDER") as IBitmapWrapperWindow;
            if(_loc4_ != null)
            {
               _loc4_.bitmap = new BitmapData(var_525.width,var_525.height,true,0);
               _loc4_.bitmap.copyPixels(var_525,var_525.rect,new Point(0,0));
            }
            _loc5_ = _loc3_.findChildByTag("COLOR_IMAGE") as IBitmapWrapperWindow;
            if(_loc5_ != null)
            {
               _loc5_.bitmap = new BitmapData(var_923.width,var_923.height,true,0);
               _loc7_ = uint(_loc2_ >> 16 & 255);
               _loc8_ = uint(_loc2_ >> 8 & 255);
               _loc9_ = uint(_loc2_ >> 0 & 255);
               _loc10_ = _loc7_ / 255 * 1;
               _loc11_ = _loc8_ / 255 * 1;
               _loc12_ = _loc9_ / 255 * 1;
               _loc13_ = new ColorTransform(_loc10_,_loc11_,_loc12_);
               _loc14_ = var_923.clone();
               _loc14_.colorTransform(_loc14_.rect,_loc13_);
               _loc5_.bitmap.copyPixels(_loc14_,_loc14_.rect,new Point(0,0));
            }
            _loc6_ = _loc3_.findChildByTag("COLOR_CHOSEN") as IBitmapWrapperWindow;
            if(_loc6_ != null)
            {
               _loc6_.bitmap = new BitmapData(var_750.width,var_750.height,true,16777215);
               _loc6_.bitmap.copyPixels(var_750,var_750.rect,new Point(0,0),null,null,true);
               _loc6_.visible = false;
            }
         }
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc2_:int = var_438.getGridItemIndex(param1.target as IWindow);
         setSelectedColorIndex(_loc2_);
         _view.selectedColorIndex = _loc2_;
      }
      
      public function setSelectedColorIndex(param1:int) : void
      {
         if(var_438 == null)
         {
            return;
         }
         if(param1 < 0 || param1 >= var_438.numGridItems)
         {
            return;
         }
         select(var_438.getGridItemAt(param1) as IWindowContainer);
      }
      
      private function get colors() : Array
      {
         if(_view == null)
         {
            return [];
         }
         return _view.colors;
      }
      
      private function populate(param1:IHabboWindowManager) : void
      {
         if(_view == null || var_438 == null)
         {
            return;
         }
         populateColourGrid(param1);
      }
      
      private function select(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(var_311 != null)
         {
            _loc2_ = var_311.getChildByName("chosen");
            if(_loc2_ != null)
            {
               _loc2_.visible = false;
            }
         }
         var_311 = param1;
         _loc2_ = var_311.getChildByName("chosen");
         if(_loc2_ != null)
         {
            _loc2_.visible = true;
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = XmlAsset(param1.getAssetByName("dimmer_color_chooser_cell"));
         var_1365 = XML(_loc2_.content);
         _loc3_ = BitmapDataAsset(param1.getAssetByName("dimmer_color_frame"));
         var_525 = BitmapData(_loc3_.content);
         _loc3_ = BitmapDataAsset(param1.getAssetByName("dimmer_color_button"));
         var_923 = BitmapData(_loc3_.content);
         _loc3_ = BitmapDataAsset(param1.getAssetByName("dimmer_color_selected"));
         var_750 = BitmapData(_loc3_.content);
      }
      
      public function dispose() : void
      {
         _view = null;
         var_438 = null;
         var_1365 = null;
         var_525 = null;
         var_923 = null;
         var_750 = null;
      }
   }
}
