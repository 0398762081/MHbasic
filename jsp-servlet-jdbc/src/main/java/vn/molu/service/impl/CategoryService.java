package vn.molu.service.impl;

import java.util.List;

import javax.inject.Inject;

import vn.molu.dao.ICategoryDAO;
import vn.molu.module.CategoryModel;
import vn.molu.service.ICategoryService;



public class CategoryService implements ICategoryService {
	
	@Inject
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}
}
