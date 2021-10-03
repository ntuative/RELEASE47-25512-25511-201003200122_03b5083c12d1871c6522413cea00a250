package com.sulake.core.window
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.IRectLimiter;
   import com.sulake.core.window.utils.WindowRectLimits;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowModel implements IDisposable
   {
       
      
      protected var _disposed:Boolean = false;
      
      protected var var_370:Rectangle;
      
      protected var var_17:uint;
      
      protected var var_143:Rectangle;
      
      protected var _type:uint;
      
      protected var var_1109:Boolean = true;
      
      protected var var_144:Rectangle;
      
      protected var var_625:uint = 16777215;
      
      protected var var_36:uint;
      
      protected var var_80:uint;
      
      protected var var_349:Boolean = true;
      
      protected var var_324:String = "";
      
      protected var var_74:WindowRectLimits;
      
      protected var var_1379:uint;
      
      protected var var_755:Boolean = false;
      
      protected var var_406:Number = 1;
      
      protected var var_55:Rectangle;
      
      protected var _id:uint;
      
      protected var _name:String;
      
      protected var var_7:Rectangle;
      
      protected var _context:WindowContext;
      
      protected var var_624:Array;
      
      public function WindowModel(param1:uint, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:Array = null)
      {
         super();
         _id = param1;
         _name = param2;
         _type = param3;
         var_17 = param5;
         var_36 = WindowState.const_85;
         var_80 = param4;
         var_624 = param8 == null ? new Array() : param8;
         _context = param6;
         var_7 = param7.clone();
         var_370 = param7.clone();
         var_55 = param7.clone();
         var_144 = new Rectangle();
         var_143 = null;
         var_74 = new WindowRectLimits(this as IWindow);
      }
      
      public function getMinHeight() : int
      {
         return var_74.minHeight;
      }
      
      public function testTypeFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (_type & param2 ^ param1) == 0;
         }
         return (_type & param1) == param1;
      }
      
      public function getMinWidth() : int
      {
         return var_74.minWidth;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get param() : uint
      {
         return var_17;
      }
      
      public function get state() : uint
      {
         return var_36;
      }
      
      public function getMaximizedWidth() : int
      {
         return var_143.width;
      }
      
      public function getMinimizedHeight() : int
      {
         return var_144.height;
      }
      
      public function get limits() : IRectLimiter
      {
         return var_74;
      }
      
      public function get tags() : Array
      {
         return var_624;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function testStateFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_36 & param2 ^ param1) == 0;
         }
         return (var_36 & param1) == param1;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            var_7 = null;
            var_36 = WindowState.const_369;
            _disposed = true;
            var_624 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get height() : int
      {
         return var_7.height;
      }
      
      public function get position() : Point
      {
         return var_7.topLeft;
      }
      
      public function get background() : Boolean
      {
         return var_755;
      }
      
      public function get context() : IWindowContext
      {
         return _context;
      }
      
      public function getMaximizedHeight() : int
      {
         return var_143.height;
      }
      
      public function get style() : uint
      {
         return var_80;
      }
      
      public function getMaxWidth() : int
      {
         return var_74.maxWidth;
      }
      
      public function invalidate(param1:Rectangle = null) : void
      {
      }
      
      public function testStyleFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_80 & param2 ^ param1) == 0;
         }
         return (var_80 & param1) == param1;
      }
      
      public function testParamFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_17 & param2 ^ param1) == 0;
         }
         return (var_17 & param1) == param1;
      }
      
      public function hasMaxHeight() : Boolean
      {
         return false;
      }
      
      public function get type() : uint
      {
         return _type;
      }
      
      public function get clipping() : Boolean
      {
         return var_1109;
      }
      
      public function setMinWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_74.minWidth = param1;
         return _loc2_;
      }
      
      public function get width() : int
      {
         return var_7.width;
      }
      
      public function hasMinHeight() : Boolean
      {
         return false;
      }
      
      public function get blend() : Number
      {
         return var_406;
      }
      
      public function getInitialHeight() : int
      {
         return var_370.height;
      }
      
      public function getMinimizedWidth() : int
      {
         return var_144.width;
      }
      
      public function setMinHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_74.minHeight = param1;
         return _loc2_;
      }
      
      public function getInitialWidth() : int
      {
         return var_370.width;
      }
      
      public function getPreviousWidth() : int
      {
         return var_55.width;
      }
      
      public function hasMinWidth() : Boolean
      {
         return false;
      }
      
      public function get color() : uint
      {
         return var_625;
      }
      
      public function get caption() : String
      {
         return var_324;
      }
      
      public function setMaxHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_74.maxHeight = param1;
         return _loc2_;
      }
      
      public function get rectangle() : Rectangle
      {
         return var_7;
      }
      
      public function setMaxWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_74.maxWidth = param1;
         return _loc2_;
      }
      
      public function get visible() : Boolean
      {
         return var_349;
      }
      
      public function getMaxHeight() : int
      {
         return var_74.maxHeight;
      }
      
      public function get x() : int
      {
         return var_7.x;
      }
      
      public function get y() : int
      {
         return var_7.y;
      }
      
      public function getPreviousHeight() : int
      {
         return var_55.height;
      }
      
      public function hasMaxWidth() : Boolean
      {
         return false;
      }
   }
}
