

/*
*Make you easy with cpp,without interact with java
*/

/*

MapHack(env,"11","23","9"); //on
MapHack(env,"11","23,"14" ); //off

EspLockHero(env,"2.53125","2.5","1.875","7"); //on
EspLockHero(env,"2.53125","7","1.875","2.5"); //off

NoCoolDown(env,"2098082","0","1"); //on
NoCoolDown(env,"2098082","1","0"); //off

*/

void DroneVertical(JNIEnv * env,const char *s,const char *r,const char *e){
	jclass memClass = env->FindClass("il2cpp/typefaces/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass,"_init_","()V");
	env->CallStaticVoidMethod(memClass,memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass,"DroneVertical",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring ss = env->NewStringUTF(s);
	jstring rr = env->NewStringUTF(r);
	jstring ee = env->NewStringUTF(e);
	env->CallStaticVoidMethod(memClass,memWrite,ss,rr,ee);
}

void DroneVertical2(JNIEnv * env,const char *a,const char *b,const char *c){
	jclass memClass = env->FindClass("il2cpp/typefaces/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass,"_init_","()V");
	env->CallStaticVoidMethod(memClass,memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass,"DroneVertical2",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring aa = env->NewStringUTF(a);
	jstring bb = env->NewStringUTF(b);
	jstring cc = env->NewStringUTF(c);
	env->CallStaticVoidMethod(memClass,memWrite,aa,bb,cc);
}

void View(JNIEnv * env, const char *k, const char *l, const char *m, const char *n)
{
	jclass memClass = env->FindClass("il2cpp/typefaces/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass, "_init_", "()V");
	env->CallStaticVoidMethod(memClass, memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass, "View",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring kk = env->NewStringUTF(k);
	jstring ll = env->NewStringUTF(l);
	jstring mm = env->NewStringUTF(m);
	jstring nn = env->NewStringUTF(n);
	env->CallStaticVoidMethod(memClass, memWrite, kk, ll, mm, nn);
}

void SpamChat(JNIEnv * env, const char *s, const char *r, const char *e1, const char *e2)
{
	jclass memClass = env->FindClass("il2cpp/typefaces/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass, "_init_", "()V");
	env->CallStaticVoidMethod(memClass, memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass, "SpamChat",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring ss = env->NewStringUTF(s);
	jstring rr = env->NewStringUTF(r);
	jstring ee1 = env->NewStringUTF(e1);
	jstring ee2 = env->NewStringUTF(e2);
	env->CallStaticVoidMethod(memClass, memWrite, ss, rr, ee1, ee2);
}

void Radar(JNIEnv * env,const char *x,const char *w,const char *z){
	jclass memClass = env->FindClass("il2cpp/typefaces/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass,"_init_","()V");
	env->CallStaticVoidMethod(memClass,memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass,"Radar",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring xx = env->NewStringUTF(x);
	jstring ww = env->NewStringUTF(w);
	jstring zz = env->NewStringUTF(z);
	env->CallStaticVoidMethod(memClass,memWrite,xx,ww,zz);
}

/*void LockMode(JNIEnv * env, const char *g, const char *h, const char *i, const char *j)
{
	jclass memClass = env->FindClass("uk/lgl/modmenu/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass, "_init_", "()V");
	env->CallStaticVoidMethod(memClass, memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass, "LockMode",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring gg = env->NewStringUTF(g);
	jstring hh = env->NewStringUTF(h);
	jstring ii = env->NewStringUTF(i);
	jstring jj = env->NewStringUTF(j);
	env->CallStaticVoidMethod(memClass, memWrite, gg, hh, ii, jj);
}

void NoCoolDown(JNIEnv * env,const char *x,const char *w,const char *z){
	jclass memClass = env->FindClass("uk/lgl/modmenu/MemBridge");
	jmethodID memInit = env->GetStaticMethodID(memClass,"_init_","()V");
	env->CallStaticVoidMethod(memClass,memInit);
	jmethodID memWrite = env->GetStaticMethodID(memClass,"NoCoolDown",
												"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");
	jstring xx = env->NewStringUTF(x);
	jstring ww = env->NewStringUTF(w);
	jstring zz = env->NewStringUTF(z);
	env->CallStaticVoidMethod(memClass,memWrite,xx,ww,zz);
}*/
