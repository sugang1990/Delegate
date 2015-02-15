package org.json;

import java.util.Iterator;

//import org.apache.log4j.chainsaw.Main;

public class JSONHelper {

	/**
	 * 遍历查询 Key 返回 Object
	 * 
	 * @param KeyName
	 * @return
	 */
	public static Object GetObjectIfExist(JSONObject jsonObj, String KeyName) {

		Iterator<String> keys = jsonObj.keys();
		JSONObject jo = null;
		Object o;
		String key;

		while (keys.hasNext()) {
			key = keys.next();
			o = jsonObj.get(key);

			if (key.equals(KeyName)) {
				return o;
			}

			if (o instanceof JSONObject) {
				jo = (JSONObject) o;

				if (jo.keySet().size() > 0) {
					Object retJson = GetObjectIfExist(jo, KeyName);
					if (retJson != null) {
						return retJson;
					}
				}
			}
		}

		return null;
	}

	/**
	 * 遍历查询 Key 返回 JsonList
	 * 
	 * @param jsonObj
	 * @param KeyName
	 * @return
	 */
	public static JSONArray GetJsonArrayIfExist(JSONObject jsonObj,
			String KeyName) {

		Iterator<String> keys = jsonObj.keys();
		JSONObject jo = null;
		Object o;
		String key;

		while (keys.hasNext()) {
			key = keys.next();
			o = jsonObj.get(key);

			if (key.equals(KeyName)) {
				if (o instanceof JSONObject) {
					JSONArray ja = new JSONArray(o);
					return ja;
				} else if (o instanceof JSONArray) {
					return (JSONArray) o;
				}
			}

			if (o instanceof JSONObject) {
				jo = (JSONObject) o;

				if (jo.keySet().size() > 0) {
					JSONArray retJson = GetJsonArrayIfExist(jo, KeyName);
					if (retJson != null) {
						return retJson;
					}
				}
			}
		}

		return null;
	}
	
	
	public  void main(String[] args){
		JSONObject jObject=new JSONObject("{Info={njccPayQueryResult={interfaceName=\"NJCC_WAP_PAY_QUERY\";interfaceVersion=\"1.0.0.1\";notifyData={order={comment=\"\";merId=client;orderAmount=7;orderId=DD20150108174244112;orderStat=0;orderTime=20150108174244;payGWSeqNo=PO20150108174223951137;refundOrderStat=\"\";};};signData=\"JKK3REy0h/dlwgL7FFltddWX1/AIY6jeTWLrDncy3J2D/GAuMgXPIBAi8WT0k538W4oPKg2IIDHP\\no2fn/5gIHbu7e4VWU5ITJk6gTvDitR6PX3h1vJsHTsjm5EAN0RhyoEPJm9diL2/9RmAkVdUvT44s\\nlFK6pTgnXrqFdxvTwqc=\";};};State=1;}");
		System.out.println(GetJsonArrayIfExist(jObject, "test"));
		System.out.println(GetJsonArrayIfExist(jObject, "test"));
		
		
	}
}
