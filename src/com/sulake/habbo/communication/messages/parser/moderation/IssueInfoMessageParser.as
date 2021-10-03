package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_57:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_57 = new IssueMessageData();
         var_57.issueId = param1.readInteger();
         var_57.state = param1.readInteger();
         var_57.categoryId = param1.readInteger();
         var_57.reportedCategoryId = param1.readInteger();
         var_57.timeStamp = getTimer() - param1.readInteger();
         var_57.priority = param1.readInteger();
         var_57.reporterUserId = param1.readInteger();
         var_57.reporterUserName = param1.readString();
         var_57.reportedUserId = param1.readInteger();
         var_57.reportedUserName = param1.readString();
         var_57.pickerUserId = param1.readInteger();
         var_57.pickerUserName = param1.readString();
         var_57.message = param1.readString();
         var_57.chatRecordId = param1.readInteger();
         var_57.roomName = param1.readString();
         var_57.roomType = param1.readInteger();
         if(false)
         {
            var_57.roomResources = param1.readString();
            var_57.unitPort = param1.readInteger();
            var_57.worldId = param1.readInteger();
         }
         if(false)
         {
            var_57.flatType = param1.readString();
            var_57.flatId = param1.readInteger();
            var_57.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_57;
      }
      
      public function flush() : Boolean
      {
         var_57 = null;
         return true;
      }
   }
}
