package org.meeuw.cheerpj;

public interface BaseInterfaceA {

    String A = "A";

    default String getA() {
        return A;
    }
}
