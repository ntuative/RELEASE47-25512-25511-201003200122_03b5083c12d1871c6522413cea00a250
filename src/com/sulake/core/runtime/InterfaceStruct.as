package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_424:uint;
      
      private var var_1065:IUnknown;
      
      private var var_1311:String;
      
      private var var_1064:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1064 = param1;
         var_1311 = getQualifiedClassName(var_1064);
         var_1065 = param2;
         var_424 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1064;
      }
      
      public function get disposed() : Boolean
      {
         return var_1065 == null;
      }
      
      public function get references() : uint
      {
         return var_424;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_424) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1065;
      }
      
      public function get iis() : String
      {
         return var_1311;
      }
      
      public function reserve() : uint
      {
         return ++var_424;
      }
      
      public function dispose() : void
      {
         var_1064 = null;
         var_1311 = null;
         var_1065 = null;
         var_424 = 0;
      }
   }
}
