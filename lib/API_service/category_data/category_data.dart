import 'package:new_app/models/category_model/category_model.dart';

List<CategoryModel> GetCategory() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Business';
  categoryModel.imageCategory = 'assets/business.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Technology';
  categoryModel.imageCategory = 'assets/technology.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Health';
  categoryModel.imageCategory = 'assets/health.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Sports';
  categoryModel.imageCategory = 'assets/sport.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Science';
  categoryModel.imageCategory = 'assets/science.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Entertainment';
  categoryModel.imageCategory = 'assets/entertainment.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'World';
  categoryModel.imageCategory = 'assets/world.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Politics';
  categoryModel.imageCategory = 'assets/politics.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.nameCategory = 'Enviroment';
  categoryModel.imageCategory = 'assets/environment.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
