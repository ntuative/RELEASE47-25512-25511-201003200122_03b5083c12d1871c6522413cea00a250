package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1550:GarbageMonitor = null;
      
      private var var_1304:int = 0;
      
      private var var_1277:Boolean = false;
      
      private var var_2084:String = "";
      
      private var var_1551:String = "";
      
      private var var_353:Number = 0;
      
      private var var_1305:int = 10;
      
      private var var_2325:Array;
      
      private var var_629:int = 0;
      
      private var var_1303:int = 60;
      
      private var var_1058:int = 0;
      
      private var var_1057:int = 0;
      
      private var var_2083:String = "";
      
      private var var_2134:Number = 0;
      
      private var var_1306:int = 1000;
      
      private var var_2135:Boolean = true;
      
      private var var_2136:Number = 0.15;
      
      private var var_156:IHabboConfigurationManager = null;
      
      private var var_2082:String = "";
      
      private var var_1307:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2325 = [];
         super();
         var_1551 = Capabilities.version;
         var_2084 = Capabilities.os;
         var_1277 = Capabilities.isDebugger;
         var_2082 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1550 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1304 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1550.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1550.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_353;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1303 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1551;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1057;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1306)
         {
            ++var_1058;
            _loc3_ = true;
         }
         else
         {
            ++var_629;
            if(var_629 <= 1)
            {
               var_353 = param1;
            }
            else
            {
               _loc4_ = Number(var_629);
               var_353 = var_353 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1304 > var_1303 * 1000 && var_1307 < var_1305)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_353);
            _loc5_ = true;
            if(var_2135 && var_1307 > 0)
            {
               _loc6_ = differenceInPercents(var_2134,var_353);
               if(_loc6_ < var_2136)
               {
                  _loc5_ = false;
               }
            }
            var_1304 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2134 = var_353;
               if(sendReport())
               {
                  ++var_1307;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1305 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1306 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2082,var_1551,var_2084,var_2083,var_1277,_loc4_,_loc3_,var_1057,var_353,var_1058);
            _connection.send(_loc1_);
            var_1057 = 0;
            var_353 = 0;
            var_629 = 0;
            var_1058 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_156 = param1;
         var_1303 = int(var_156.getKey("performancetest.interval","60"));
         var_1306 = int(var_156.getKey("performancetest.slowupdatelimit","1000"));
         var_1305 = int(var_156.getKey("performancetest.reportlimit","10"));
         var_2136 = Number(var_156.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2135 = Boolean(int(var_156.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
