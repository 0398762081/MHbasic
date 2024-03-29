package vn.molu.service;

import java.util.List;

import vn.molu.module.NewModel;
import vn.molu.paging.Pageble;

public interface INewService {
	List<NewModel> findByCategoryId(Long categoryId);

	NewModel save(NewModel newModel);

	NewModel update(NewModel updateNew);

	void delete(long[] ids);

	List<NewModel> findAll(Pageble pageble);

	int getTotalItem();
	
	NewModel findOne(long id);
}
