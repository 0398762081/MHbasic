package vn.molu.paging;

import vn.molu.sort.Sorter;

public interface Pageble {

	Integer getPage();

	Integer getOffset();

	Integer getLimit();

	Sorter getSorter();
}
