
import 'package:petsquad/screens/bottom_nav_bar/find_screen/find_screen.dart';
import 'package:petsquad/screens/bottom_nav_bar/profile_screen/profile_screen.dart';
import 'package:petsquad/screens/select_role/sub_screens/parmacy_screen.dart';
import 'package:petsquad/themes/app_colors.dart';
import 'package:petsquad/themes/app_text.dart';
import 'package:petsquad/themes/assets.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';
import '../screens/bottom_nav_bar/find_screen/tabs/animal_welfare_group/animal_welfare_group.dart';
import '../screens/bottom_nav_bar/find_screen/tabs/pet_store/pet_store.dart';
import '../screens/bottom_nav_bar/find_screen/tabs/pharmacy/pharmacy.dart';
import '../screens/bottom_nav_bar/find_screen/tabs/vet_or_clinic/vet_or_clinic.dart';
import '../screens/bottom_nav_bar/home_screen/home_screen.dart';
import '../screens/bottom_nav_bar/qr_code_scanner/qr_code_scanner.dart';

int currentIndex  = 0;
String ? cate;
String ? breeds;
String ? age;
String ? gender;
final List pages = [
  const HomeScreen(),
  const QrCode(),
  const FindScreen(),
  const ProfileScreen(),
];

int tabIndex = 0;
final tabPages = [
  const VetOrClinic(),
  const Pharmacy(),
  const PetStore(),
  const AnimalWelfareGroup(),
];

final List<RoleModel> roleData= [
  RoleModel(
    title: AppText.petOwner,
    icon: AppIcons.petOwner,
    color: AppColors.primaryGreen.withOpacity(0.20),

  ),
  RoleModel(
    title: AppText.vetOrClinic,
    icon: AppIcons.vetOrClinic,
    color: AppColors.primaryOrange.withOpacity(0.20),

  ),
  RoleModel(
    title: AppText.pharmacy,
    icon: AppIcons.pharmacy,
    color: AppColors.primaryLightRed.withOpacity(0.20),

  ),
  RoleModel(
    title: AppText.animalWelfareGroup,
    icon: AppIcons.animalWelfareGroup,
    color: AppColors.primaryLightYellow.withOpacity(0.20),

  ),
  RoleModel(
    title: AppText.petStore,
    icon: AppIcons.petStore,
    color: AppColors.primaryIndigo.withOpacity(0.20),

  ),
];
List<Medicine> medicineData = [
  const Medicine(
    image: AppImages.brownDog,
    name: AppText.dogMedicine,
    color: AppColors.primaryOrange

  ),
  const Medicine(
    image: AppImages.cat,
    name: AppText.catMedicine,
    color: AppColors.primaryGreen

  ),
];


List<String> states = [
  'Andhra Pradesh',
  'Arunachal Pradesh',
  'Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
  'West Bengal'
];
List<String> days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
];

List<String> petCategories = [
  'Dogs',
  'Cats',
  'Birds',
  'Fish',
  'Reptiles',
];
List<String> petsBreed = [
  'Baguette',
  'Sourdough',
  'Whole Wheat',
  'Rye',
  'Ciabatta',
  'Multigrain',
];
List<String> petsAge = List.generate(50, (index) => "${index + 1}");
List<String> petsGender = [
  "Male","Female"
];


//request for smartphet
String ? noOfTags;
List<String> tags = List.generate(50, (index) => "${index + 1}");