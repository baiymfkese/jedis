/*******************************************************************************
 * @project: alms
 * @package: com.acconsys.alms.util.license
 * @file: Password.java
 * @author: bruce
 * @created: 2010-9-17
 * @purpose:
 * 
 * @version: 1.0
 * 
 * Revision History at the end of file.
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/

package com.dawning.gridview.app.gridview.webapp.jedis.license;

public class Password {

	static String bin2hex = "0123456789ABCDEF";
	static int BUFLEN = 20480;
	static int[] buf = new int[BUFLEN];
	static int crypt_c1 = 52845;
	static int crypt_c2 = 22719;
	static String seed = "SendCenter_yin";

	public static String encryptPasswd(String passwd) {
		if (passwd == "")
			return passwd;
		byte[] v_key = seed.getBytes();
		int dcry_state = 0;
		for (int i = 0; i < v_key.length; i++)
			dcry_state += v_key[i];
		int[] decode_string = new int[256];
		Encodestring(dcry_state, decode_string, passwd.getBytes());
		int x = 0;
		byte[] decode_string_byte = new byte[256];
		while ((decode_string[x] & 0x000000FF) != 0) {
			decode_string_byte[x] = (byte) (decode_string[x] & 0x000000FF);
			x++;
		}
		String encrypted = new String(decode_string_byte, 0, x);
		return encrypted;
	}

	public static String decryptPasswd(String passwd) {
		if (passwd == "")
			return passwd;
		byte[] v_key = seed.getBytes();
		int dcry_state = 0;
		for (int i = 0; i < v_key.length; i++)
			dcry_state += v_key[i];

		int[] decode_string = new int[256];

		Decodestring(dcry_state, decode_string, passwd.getBytes());
		int x = 0;
		byte[] decode_string_byte = new byte[256];
		while ((decode_string[x] & 0x000000FF) != 0) {
			decode_string_byte[x] = (byte) (decode_string[x] & 0x000000FF);
			x++;
		}
		String decrypted = new String(decode_string_byte, 0, x);
		return decrypted;
	}

	public static int Decodestring(int dcry_state, int[] decode_string,
			byte[] passwd) {
		int count = passwd.length;
		if (count > BUFLEN / 2)
			return -1;
		int[] str = new int[255];

		for (int n = 0; n < passwd.length; n++) {
			str[n] = passwd[n];
		}

		int p = 0;
		int q = 0;

		int[] dest = new int[255];
		int index;

		if (count > 0) {
			int real_count = count / 2;
			int i = real_count;

			while (i-- != 0) {
				if (str[p] >= '0' && str[p] <= '9') {
					dest[q] = str[p] - '0';
				} else {
					dest[q] = str[p] + 10 - 'A';
				}
				p++;
				if (str[p] >= '0' && str[p] <= '9') {
					dest[q] = 16 * dest[q] + (str[p] - '0');
				} else {
					dest[q] = 16 * (dest[q]) + (str[p] + 10 - 'A');
				}
				p++;
				q++;

			}

			f_type1_decrypt(str, dest, real_count, dcry_state);
			str[real_count] = '\0';
			for (int m = 0; str[m] != 0; m++) {
				decode_string[m] = str[m];
			}

		}

		return 0;

	}

	public static int Encodestring(int dcry_state, int[] decode_string,
			byte[] passwd) {
		int count = 0;
		count = passwd.length;
		int p, q;
		if (count > BUFLEN / 2)
			return -1;
		for (int n = 0; n < passwd.length; n++) {
			buf[n] = passwd[n];
		}

		if (count > 0) {
			int i = count;

			f_type1_encrypt(buf, buf, count, dcry_state);

			p = count - 1;
			q = count * 2 - 1;
			buf[q + 1] = 0;

			while (i-- != 0) {
				buf[q--] = bin2hex.getBytes()[buf[p] & 0x0000000F];
				buf[q--] = bin2hex.getBytes()[buf[p] >> 4];

				p--;
			}

			for (int m = 0; buf[q + 1 + m] != 0; m++) {
				decode_string[m] = buf[q + 1 + m];
			}
		}
		return 0;
	}

	public static int f_type1_decrypt(int[] dest, int[] src, int len, int pstate) {
		int state = pstate;
		int from = 0;
		int to = 0;
		int count = len;

		while (count != 0) {
			int a = (int) (state) >> 8;
			int v = (src[from] ^ (a & 0x000000FF));
			dest[to] = v;
			int xx = (src[from] + state) * crypt_c1 + crypt_c2;
			state = xx & 0x0000FFFF;
			to++;
			count--;
			from++;
		}
		pstate = state;
		return 0;
	}

	public static int f_type1_encrypt(int[] dest, int[] src, int len, int pstate) {

		int state = pstate;
		int from = 0;
		int to = 0;

		int count = len;

		while (count != 0) {
			int a = (int) (state) >> 8;
			int v = (src[from] ^ (a & 0x000000FF));
			dest[to] = v;
			int xx = ((dest[to] + state) * crypt_c1 + crypt_c2);

			state = xx & 0x0000FFFF;

			from++;
			to++;
			count--;
		}
		pstate = state;
		return 0;
	}

	public static void main(String[] args) {
		String b = Password.encryptPasswd("center");
		System.out.println(b);
		String b1 = Password.decryptPasswd("668385D421B3");
		System.out.println(b1);
	}
}



/*******************************************************************************
 * <B>Revision History</B><BR>
 * [type 'revision' and press Alt + / to insert revision block]<BR>
 * 
 * 
 * 
 * Copyright 2010 AcconSys All rights reserved.
 ******************************************************************************/