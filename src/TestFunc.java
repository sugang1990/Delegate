import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.PostMethod;
import org.json.JSONObject;

public class TestFunc {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//String url = "http://service.hcure.cn:7072/LoveHealthDelegateOrder/CreateOnceTask";
		// OrderTime=16:54:49&IDCardNo=530111199012151236
		String url = "http://localhost:8080/LoveHealthDelegateOrder/CreateOnceTask";
		HttpClient httpClient = new HttpClient();
		PostMethod method = new PostMethod(url);
		method.addParameter("OrderTime", "2015/2/10 16:05:59");
		method.addParameter("DepId", "4601");
		method.addParameter("DocId", "7147");
		method.addParameter("HosCode", "32016400");
		method.addParameter("IDCardNo", "32152419901026811");
		method.addParameter("UserId", "32152419901026811");
		method.addParameter("Password", "1c63129ae9db9c60c3e8aa94d3e00495");
		method.addParameter("SchCode", "19549324");
		method.addParameter("Token", "c9a3a238caeaa1a1a7183d0c2624e409");
		try {
			httpClient.executeMethod(method);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 获取参数
		JSONObject retJsonObject = new JSONObject();
		retJsonObject = getResult(method);
		System.out.println(retJsonObject);
	}

	private static JSONObject getResult(PostMethod method) {
		JSONObject jsonObject = new JSONObject();
		try {
			InputStream stream = method.getResponseBodyAsStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(
					stream, "UTF-8"));
			StringBuffer buf = new StringBuffer();
			String line;
			while (null != (line = br.readLine())) {
				buf.append(line);
			}
			jsonObject = new JSONObject(buf.toString());
			// 释放连接
			method.releaseConnection();
		} catch (IOException e) {
			method.releaseConnection();
			e.printStackTrace();
		}
		return jsonObject;
	}

}
