package vn.molu.dao;

import java.util.List;

import vn.molu.module.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {

	List<CategoryModel> findAll();

	CategoryModel findOne(long id);

	CategoryModel findOneByCode(String code);

}
