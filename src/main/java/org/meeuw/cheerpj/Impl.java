package org.meeuw.cheerpj;

public class Impl implements BaseInterfaceB, BaseInterfaceC {

    public static Impl INSTANCE = new Impl();

    public String getResult() {
        return getA();
    }
}
