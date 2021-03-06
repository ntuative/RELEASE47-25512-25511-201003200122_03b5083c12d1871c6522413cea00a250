package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1845:Boolean;
      
      private var var_1455:Array;
      
      private var var_1850:Boolean;
      
      private var var_1849:Boolean;
      
      private var var_1844:Boolean;
      
      private var var_151:Array;
      
      private var var_1846:Boolean;
      
      private var var_1843:Boolean;
      
      private var var_1456:Array;
      
      private var var_1848:Boolean;
      
      private var var_1847:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1847;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1845;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1850;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1846;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1843;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1455;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_151 = [];
         var_1455 = [];
         _roomMessageTemplates = [];
         var_1456 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_151.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1455.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1456.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1846 = param1.readBoolean();
         var_1844 = param1.readBoolean();
         var_1850 = param1.readBoolean();
         var_1849 = param1.readBoolean();
         var_1847 = param1.readBoolean();
         var_1843 = param1.readBoolean();
         var_1845 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1848 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1849;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1456;
      }
      
      public function get issues() : Array
      {
         return var_151;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1848;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1844;
      }
   }
}
