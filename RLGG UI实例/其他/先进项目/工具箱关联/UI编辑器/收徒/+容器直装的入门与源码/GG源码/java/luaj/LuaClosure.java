package luaj;

import android.ext.Script;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaClosure extends LuaFunction {
    private static final an[] f = new an[0];
    private static int h = 0;
    public final al a;
    public an[] b;
    final Globals c;
    public volatile int e;
    public String d = null;
    private ap g = x;

    public LuaClosure(al alVar, LuaValue luaValue, boolean z) {
        this.a = alVar;
        if (alVar.v == null || alVar.v.length == 0) {
            this.b = f;
        } else {
            int length = alVar.v.length;
            an[] anVarArr = new an[length];
            if (z) {
                LuaValue[] luaValueArr = new LuaValue[length];
                luaValueArr[0] = luaValue;
                anVarArr[0] = new an(luaValueArr, 0);
                for (int i = 1; i < length; i++) {
                    luaValueArr[i] = u;
                    anVarArr[i] = new an(luaValueArr, i);
                }
            }
            this.b = anVarArr;
        }
        this.c = luaValue instanceof Globals ? (Globals) luaValue : null;
    }

    @Override // luaj.LuaValue
    public boolean j() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaClosure k() {
        return this;
    }

    @Override // luaj.LuaFunction, luaj.LuaValue, luaj.ap
    public String d_() {
        return "function: " + this.a.toString();
    }

    private LuaValue[] S() {
        int i = this.a.B;
        LuaValue[] luaValueArr = new LuaValue[i];
        System.arraycopy(ag, 0, luaValueArr, 0, i);
        return luaValueArr;
    }

    @Override // luaj.LuaValue
    public final LuaValue l() {
        return a(S(), (ap) x, false).g();
    }

    @Override // luaj.LuaValue
    public final LuaValue a(LuaValue luaValue) {
        LuaValue[] S = S();
        switch (this.a.z) {
            case 0:
                if (this.a.A == 0) {
                    luaValue = x;
                }
                return a(S, (ap) luaValue, false).g();
            default:
                S[0] = luaValue;
                return a(S, (ap) x, false).g();
        }
    }

    @Override // luaj.LuaValue
    public final LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue[] S = S();
        switch (this.a.z) {
            case 0:
                return a(S, this.a.A == 0 ? x : b(luaValue, (ap) luaValue2), false).g();
            case 1:
                S[0] = luaValue;
                if (this.a.A == 0) {
                    luaValue2 = x;
                }
                return a(S, (ap) luaValue2, false).g();
            default:
                S[0] = luaValue;
                S[1] = luaValue2;
                return a(S, (ap) x, false).g();
        }
    }

    @Override // luaj.LuaValue
    public final LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue[] S = S();
        switch (this.a.z) {
            case 0:
                return a(S, this.a.A == 0 ? x : a(luaValue, luaValue2, (ap) luaValue3), false).g();
            case 1:
                S[0] = luaValue;
                return a(S, this.a.A == 0 ? x : b(luaValue2, (ap) luaValue3), false).g();
            case 2:
                S[0] = luaValue;
                S[1] = luaValue2;
                if (this.a.A == 0) {
                    luaValue3 = x;
                }
                return a(S, (ap) luaValue3, false).g();
            default:
                S[0] = luaValue;
                S[1] = luaValue2;
                S[2] = luaValue3;
                return a(S, (ap) x, false).g();
        }
    }

    @Override // luaj.LuaValue
    public final ap a_(ap apVar) {
        return a(apVar, false).b();
    }

    @Override // luaj.LuaValue
    public final ap a(ap apVar, boolean z) {
        LuaValue[] S = S();
        if (this.a.B < this.a.z) {
            throw new o("Damaged script: .maxstacksize (" + this.a.B + ") < .numparams (" + this.a.z + ")");
        }
        for (int i = 0; i < this.a.z; i++) {
            S[i] = apVar.c(i + 1);
        }
        return a(S, this.a.A == 0 ? x : apVar.e_(this.a.z + 1), z);
    }

    private static o a(int i, int i2, int i3) {
        return new o("Damaged script " + i + ": an attempt to get an upvalue with index " + i2 + " when there are " + i3 + " in total.");
    }

    public ap m() {
        return this.g;
    }

    public void b(ap apVar) {
        this.g = apVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x016c, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c A[Catch: all -> 0x010d, TryCatch #13 {all -> 0x010d, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:16:0x0088, B:18:0x008c, B:19:0x0090, B:22:0x0096, B:24:0x00a6, B:25:0x00b0, B:27:0x00c1, B:29:0x00c9, B:31:0x00cd, B:32:0x00d5, B:33:0x00e1, B:35:0x00e6, B:37:0x00eb, B:39:0x00f1, B:41:0x010c, B:587:0x0bb9, B:542:0x0b20, B:547:0x0b2f, B:552:0x0b3d, B:557:0x0b4c, B:563:0x0b5d, B:568:0x0b6c, B:571:0x0b76, B:573:0x0b80, B:575:0x0b88, B:578:0x0b93, B:580:0x0b9d, B:581:0x0ba1, B:584:0x0bab, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd, B:63:0x0158, B:66:0x0162, B:67:0x0165, B:594:0x0be5, B:74:0x0178, B:75:0x0182, B:40:0x0107), top: B:613:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0609 A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, NullPointerException -> 0x0654, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x064f A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, NullPointerException -> 0x0654, TRY_ENTER, TRY_LEAVE, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x06bb A[Catch: all -> 0x06db, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:383:0x06d4 A[Catch: all -> 0x06db, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x06e9 A[Catch: all -> 0x06db, TRY_ENTER, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x06f4 A[Catch: all -> 0x06db, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0703 A[Catch: all -> 0x06db, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0718 A[Catch: all -> 0x06db, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0728 A[Catch: all -> 0x06db, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x073c A[Catch: all -> 0x06db, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0754 A[Catch: all -> 0x06db, TRY_LEAVE, TryCatch #13 {all -> 0x06db, blocks: (B:377:0x06a7, B:380:0x06bb, B:383:0x06d4, B:392:0x06e9, B:393:0x06f4, B:394:0x0703, B:395:0x0718, B:396:0x0728, B:397:0x073c, B:398:0x0754), top: B:620:0x06a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0793 A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, TRY_ENTER, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0799 A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x07a3 A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x07c4 A[Catch: o -> 0x0087, all -> 0x010d, StackOverflowError -> 0x0157, InterruptedException -> 0x0177, Throwable -> 0x01af, TryCatch #8 {StackOverflowError -> 0x0157, blocks: (B:10:0x0056, B:11:0x0079, B:13:0x007f, B:14:0x0086, B:55:0x0135, B:56:0x013a, B:57:0x0146, B:58:0x0149, B:60:0x014f, B:61:0x0156, B:536:0x0afe, B:537:0x0b14, B:69:0x0168, B:70:0x016c, B:71:0x0170, B:77:0x0185, B:79:0x018d, B:81:0x019f, B:82:0x01a3, B:83:0x01ae, B:87:0x01c2, B:88:0x01d2, B:89:0x01d9, B:92:0x01df, B:101:0x01f6, B:103:0x01fb, B:105:0x0202, B:106:0x0207, B:107:0x0208, B:108:0x0212, B:110:0x0219, B:111:0x021e, B:112:0x021f, B:114:0x022d, B:115:0x0231, B:116:0x0239, B:117:0x023c, B:119:0x0248, B:120:0x024c, B:121:0x0254, B:122:0x0257, B:124:0x025c, B:125:0x0261, B:126:0x0262, B:128:0x026e, B:129:0x0273, B:131:0x027b, B:132:0x027f, B:134:0x0288, B:133:0x0284, B:135:0x028b, B:137:0x0292, B:138:0x0297, B:139:0x0298, B:140:0x02a1, B:142:0x02a9, B:143:0x02ae, B:145:0x02b6, B:146:0x02ba, B:148:0x02c3, B:147:0x02bf, B:149:0x02c6, B:150:0x02d5, B:152:0x02e5, B:153:0x02e9, B:154:0x02f1, B:155:0x02f4, B:157:0x02fa, B:158:0x02ff, B:160:0x0307, B:161:0x030b, B:163:0x0317, B:162:0x0313, B:164:0x031a, B:166:0x0320, B:167:0x0325, B:169:0x032d, B:170:0x0331, B:172:0x033d, B:171:0x0339, B:173:0x0340, B:175:0x0346, B:176:0x034b, B:178:0x0353, B:179:0x0357, B:181:0x0363, B:180:0x035f, B:182:0x0366, B:184:0x036c, B:185:0x0371, B:187:0x0379, B:188:0x037d, B:190:0x0389, B:189:0x0385, B:191:0x038c, B:193:0x0392, B:194:0x0397, B:196:0x039f, B:197:0x03a3, B:199:0x03af, B:198:0x03ab, B:200:0x03b2, B:202:0x03b8, B:203:0x03bd, B:205:0x03c5, B:206:0x03c9, B:208:0x03d5, B:207:0x03d1, B:209:0x03d8, B:211:0x03de, B:212:0x03e3, B:214:0x03eb, B:215:0x03ef, B:217:0x03fb, B:216:0x03f7, B:218:0x03fe, B:220:0x0404, B:221:0x0409, B:223:0x0411, B:224:0x0415, B:226:0x0421, B:225:0x041d, B:227:0x0424, B:229:0x042a, B:230:0x042f, B:232:0x0437, B:233:0x043b, B:235:0x0447, B:234:0x0443, B:236:0x044a, B:238:0x0450, B:239:0x0455, B:241:0x045d, B:242:0x0461, B:244:0x046d, B:243:0x0469, B:245:0x0470, B:247:0x0476, B:248:0x047b, B:250:0x0483, B:251:0x0487, B:253:0x0493, B:252:0x048f, B:254:0x0496, B:256:0x049c, B:257:0x04a1, B:259:0x04a9, B:260:0x04ad, B:262:0x04b9, B:261:0x04b5, B:263:0x04bc, B:264:0x04c8, B:265:0x04d4, B:266:0x04e0, B:267:0x04ec, B:269:0x04f6, B:270:0x04fc, B:272:0x0500, B:273:0x0508, B:274:0x050e, B:275:0x051c, B:277:0x0525, B:280:0x052b, B:282:0x052f, B:284:0x0533, B:286:0x0537, B:287:0x053e, B:289:0x0544, B:290:0x0549, B:292:0x0551, B:293:0x0555, B:297:0x055e, B:299:0x0566, B:298:0x0562, B:301:0x056b, B:303:0x0571, B:304:0x0576, B:306:0x057e, B:307:0x0582, B:311:0x058b, B:313:0x0593, B:312:0x058f, B:315:0x0598, B:317:0x059e, B:318:0x05a3, B:320:0x05ab, B:321:0x05af, B:325:0x05b8, B:327:0x05c0, B:326:0x05bc, B:329:0x05c5, B:333:0x05d4, B:335:0x05da, B:339:0x05eb, B:341:0x05f1, B:342:0x05f5, B:344:0x05fe, B:348:0x0609, B:350:0x0611, B:364:0x064f, B:388:0x06e0, B:389:0x06e3, B:368:0x0656, B:369:0x065a, B:371:0x065f, B:372:0x0669, B:409:0x07f3, B:373:0x066d, B:374:0x069e, B:405:0x0793, B:406:0x0799, B:407:0x07a3, B:408:0x07c4, B:410:0x0806, B:411:0x0810, B:412:0x0813, B:414:0x0817, B:431:0x086e, B:416:0x0822, B:418:0x082d, B:428:0x084d, B:429:0x0850, B:430:0x085d, B:439:0x088e, B:447:0x08ae, B:468:0x0902, B:483:0x0932, B:485:0x0946, B:487:0x094c, B:488:0x095b, B:491:0x0962, B:492:0x0997, B:493:0x099e, B:501:0x0a00, B:499:0x09c2, B:500:0x09ff, B:502:0x0a0c, B:504:0x0a16, B:505:0x0a25, B:507:0x0a2b, B:508:0x0a2f, B:510:0x0a39, B:514:0x0a4a, B:515:0x0a5e, B:516:0x0a6e, B:518:0x0a76, B:519:0x0a86, B:522:0x0aa4, B:523:0x0aa8, B:525:0x0ab2, B:526:0x0ac4, B:527:0x0ac7, B:528:0x0ad2, B:530:0x0ad6, B:531:0x0ae2, B:533:0x0ae9, B:534:0x0af6, B:535:0x0afd), top: B:613:0x0056, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:609:0x0c1c  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0c1f  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x06a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:622:0x06e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:682:0x016c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v324 */
    /* JADX WARN: Type inference failed for: r13v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v91, types: [luaj.LuaValue] */
    /* JADX WARN: Type inference failed for: r14v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v41, types: [luaj.ap] */
    /* JADX WARN: Type inference failed for: r14v5, types: [luaj.ap] */
    /* JADX WARN: Type inference failed for: r14v7, types: [luaj.ap] */
    /* JADX WARN: Type inference failed for: r4v25, types: [luaj.ap] */
    /* JADX WARN: Type inference failed for: r4v57, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v64, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v70, types: [luaj.LuaValue] */
    /* JADX WARN: Type inference failed for: r6v46, types: [luaj.ap] */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v61, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v64, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v67, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v69, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v72, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v16, types: [luaj.ap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected luaj.ap a(luaj.LuaValue[] r34, luaj.ap r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 3406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaClosure.a(luaj.LuaValue[], luaj.ap, boolean):luaj.ap");
    }

    private void y(LuaValue luaValue) {
        if (luaValue instanceof Script.DebugFunction) {
            ((Script.DebugFunction) luaValue).a(this);
        }
    }

    private LuaValue z(LuaValue luaValue) {
        if (luaValue == null) {
            throw new NullPointerException("return null as LuaValue");
        }
        return luaValue;
    }

    private ap c(ap apVar) {
        if (apVar == null) {
            throw new NullPointerException("return null as Varargs");
        }
        return apVar;
    }

    private static void a(Globals globals, o oVar, StringBuilder sb) {
        if (globals != null) {
            LuaThread luaThread = globals.h;
            if (luaThread.g != null) {
                oVar.h = sb.toString();
                try {
                    oVar.j = luaThread.g.a(oVar.j != null ? oVar.j : LuaValue.m(oVar.h));
                    return;
                } catch (Throwable th) {
                    oVar.j = LuaValue.m("error in error handling");
                    return;
                }
            } else if (globals.k != null) {
                sb.append('\n');
                sb.append(globals.k.a(globals, oVar.d));
            }
        }
        oVar.h = sb.toString();
    }

    private static void a(Globals globals, o oVar, al alVar, int i, String str) {
        luaj.lib.e eVar;
        if (oVar.h == null) {
            if (alVar != null) {
                if (globals == null || globals.k == null) {
                    eVar = null;
                } else {
                    luaj.lib.e e = globals.k.e(oVar.d);
                    if (e != null) {
                        String a = e.a();
                        if (a == null) {
                            a = "?";
                        }
                        oVar.f = a;
                        oVar.g = e.c();
                    }
                    eVar = e;
                }
                if (eVar == null) {
                    oVar.f = alVar.w != null ? alVar.w.d_() : "?";
                    oVar.g = (alVar.t == null || i < 0 || i >= alVar.t.length) ? -1 : alVar.t[i];
                }
                oVar.b();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(oVar.getMessage());
            if (str != null) {
                sb.append(" (");
                sb.append(str);
                sb.append(")");
            }
            sb.append("\nlevel = ");
            sb.append(oVar.d);
            if (alVar != null) {
                sb.append(", const = ");
                sb.append(alVar.q.length);
                sb.append(", proto = ");
                sb.append(alVar.s.length);
                sb.append(", upval = ");
                sb.append(alVar.v.length);
                sb.append(", vars = ");
                sb.append(alVar.B);
                sb.append(", code = ");
                sb.append(alVar.r.length);
                sb.append('\n');
                if (i >= 0 && i < alVar.r.length) {
                    aj.a(sb, alVar, i, (ak) null);
                    sb.append('\n');
                    aj.a(sb, i, alVar.r[i]);
                } else {
                    sb.append("PC ");
                    sb.append(i);
                }
            }
            a(globals, oVar, sb);
        }
    }

    public static ap a(Globals globals, LuaFunction luaFunction, LuaValue luaValue, ap apVar) {
        ap b;
        if (globals != null && globals.k != null) {
            globals.k.a(luaFunction, false);
        }
        int i = h;
        h = 0;
        try {
            b = b(v, luaValue.a_(apVar));
        } catch (Throwable th) {
            try {
                o pVar = th instanceof o ? (o) th : new p(th);
                if (pVar.h == null) {
                    a(globals, pVar, null, 0, null);
                }
                LuaValue a = pVar.a();
                LuaBoolean luaBoolean = w;
                if (a == null) {
                    a = u;
                }
                b = b((LuaValue) luaBoolean, (ap) a);
                h = i;
                if (globals != null && globals.k != null) {
                    globals.k.S();
                }
            } finally {
                h = i;
                if (globals != null && globals.k != null) {
                    globals.k.S();
                }
            }
        }
        return b;
    }

    private an a(LuaValue[] luaValueArr, short s, an[] anVarArr) {
        int length = anVarArr.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            an anVar = anVarArr[i2];
            if (anVar == null) {
                if (i < 0) {
                    i = i2;
                }
            } else if (anVar.b == s) {
                return anVar;
            }
        }
        if (i < 0) {
            f("No space for upvalue " + length);
            return null;
        }
        an anVar2 = new an(luaValueArr, s);
        anVarArr[i] = anVar2;
        return anVar2;
    }

    @Override // luaj.LuaFunction
    public String g_() {
        return String.valueOf('<') + this.a.b() + ':' + this.a.x + '>';
    }
}
