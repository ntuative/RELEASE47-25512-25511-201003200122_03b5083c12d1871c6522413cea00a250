package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2001:int;
      
      private var var_1505:int;
      
      private var var_2003:int;
      
      private var var_2005:int;
      
      private var var_2008:int;
      
      private var var_1506:int;
      
      private var var_2002:int;
      
      private var var_2006:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2001;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1505;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2002;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2005;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2008;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1506;
      }
      
      public function get commission() : int
      {
         return var_2003;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2006 = param1.readBoolean();
         var_2003 = param1.readInteger();
         var_1505 = param1.readInteger();
         var_1506 = param1.readInteger();
         var_2005 = param1.readInteger();
         var_2001 = param1.readInteger();
         var_2008 = param1.readInteger();
         var_2002 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_2006;
      }
   }
}
