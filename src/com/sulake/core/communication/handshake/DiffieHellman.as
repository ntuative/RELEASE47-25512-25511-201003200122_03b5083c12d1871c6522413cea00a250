package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1210:BigInteger;
      
      private var var_611:BigInteger;
      
      private var var_1460:BigInteger;
      
      private var var_1459:BigInteger;
      
      private var var_1870:BigInteger;
      
      private var var_1871:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1210 = param1;
         var_1460 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1870.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1459 = new BigInteger();
         var_1459.fromRadix(param1,param2);
         var_1870 = var_1459.modPow(var_611,var_1210);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1871.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1210.toString() + ",generator: " + var_1460.toString() + ",secret: " + param1);
         var_611 = new BigInteger();
         var_611.fromRadix(param1,param2);
         var_1871 = var_1460.modPow(var_611,var_1210);
         return true;
      }
   }
}
