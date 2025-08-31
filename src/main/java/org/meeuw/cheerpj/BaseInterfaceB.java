package org.meeuw.cheerpj;

public interface BaseInterfaceB extends BaseInterfaceA {

    String A = "AB";

    @Override
    default String getA() {
        return A;
    }
    default String getB() {
        return "B";
    }
}
