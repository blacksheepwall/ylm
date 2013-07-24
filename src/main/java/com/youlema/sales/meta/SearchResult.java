package com.youlema.sales.meta;

import java.util.List;

public class SearchResult<T> {

    private final int count;

    private final List<T> resultList;

    public List<T> getResultList() {
        return resultList;
    }

    public int getCount() {
        return count;
    }

    public SearchResult(Integer count, List<T> resuList) {
        this.count = count == null ? 0 : count;
        this.resultList = resuList;
    }

}
