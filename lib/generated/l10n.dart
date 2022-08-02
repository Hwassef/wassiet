// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find something`
  String get searchForSomething {
    return Intl.message(
      'Find something',
      name: 'searchForSomething',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Sell`
  String get sell {
    return Intl.message(
      'Sell',
      name: 'sell',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get rent {
    return Intl.message(
      'Rent',
      name: 'rent',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get auction {
    return Intl.message(
      'Rent',
      name: 'auction',
      desc: '',
      args: [],
    );
  }

  /// `Kissing`
  String get kissing {
    return Intl.message(
      'Kissing',
      name: 'kissing',
      desc: '',
      args: [],
    );
  }

  /// `Rial`
  String get rial {
    return Intl.message(
      'Rial',
      name: 'rial',
      desc: '',
      args: [],
    );
  }

  /// `Openning price`
  String get openningPrice {
    return Intl.message(
      'Openning price',
      name: 'openningPrice',
      desc: '',
      args: [],
    );
  }

  /// `Remaining time`
  String get remainingTime {
    return Intl.message(
      'Remaining time',
      name: 'remainingTime',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Rating and comments`
  String get ratingAndComments {
    return Intl.message(
      'Rating and comments',
      name: 'ratingAndComments',
      desc: '',
      args: [],
    );
  }

  /// `Announcement number`
  String get announcementNumber {
    return Intl.message(
      'Announcement number',
      name: 'announcementNumber',
      desc: '',
      args: [],
    );
  }

  /// `Technical card`
  String get technicalCard {
    return Intl.message(
      'Technical card',
      name: 'technicalCard',
      desc: '',
      args: [],
    );
  }

  /// `Property type`
  String get propertyType {
    return Intl.message(
      'Property type',
      name: 'propertyType',
      desc: '',
      args: [],
    );
  }

  /// `Space`
  String get space {
    return Intl.message(
      'Space',
      name: 'space',
      desc: '',
      args: [],
    );
  }

  /// `Square meter price`
  String get squareMeterPrice {
    return Intl.message(
      'Square meter price',
      name: 'squareMeterPrice',
      desc: '',
      args: [],
    );
  }

  /// `Number of rooms`
  String get roomsNumber {
    return Intl.message(
      'Number of rooms',
      name: 'roomsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Number of bathrooms`
  String get bathsNumber {
    return Intl.message(
      'Number of bathrooms',
      name: 'bathsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Number of halls`
  String get hallsNumber {
    return Intl.message(
      'Number of halls',
      name: 'hallsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Property age`
  String get propertyAge {
    return Intl.message(
      'Property age',
      name: 'propertyAge',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Report announcement`
  String get reportAnouncement {
    return Intl.message(
      'Report announcement',
      name: 'reportAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Add comment`
  String get addComment {
    return Intl.message(
      'Add comment',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `Your rate`
  String get yourRate {
    return Intl.message(
      'Your rate',
      name: 'yourRate',
      desc: '',
      args: [],
    );
  }

  /// `Your comment`
  String get yourComment {
    return Intl.message(
      'Your comment',
      name: 'yourComment',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Previous announcements`
  String get previousAnouncements {
    return Intl.message(
      'Previous announcements',
      name: 'previousAnouncements',
      desc: '',
      args: [],
    );
  }

  /// `There is nothing at the moment`
  String get thereIsNothingAtTheMoment {
    return Intl.message(
      'There is nothing at the moment',
      name: 'thereIsNothingAtTheMoment',
      desc: '',
      args: [],
    );
  }

  /// `Report this person`
  String get reportThisPerson {
    return Intl.message(
      'Report this person',
      name: 'reportThisPerson',
      desc: '',
      args: [],
    );
  }

  /// `My announcements`
  String get myAnouncements {
    return Intl.message(
      'My announcements',
      name: 'myAnouncements',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filterBy {
    return Intl.message(
      'Filter by',
      name: 'filterBy',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sortBy {
    return Intl.message(
      'Sort by',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Nothing`
  String get nothing {
    return Intl.message(
      'Nothing',
      name: 'nothing',
      desc: '',
      args: [],
    );
  }

  /// `Newest`
  String get newest {
    return Intl.message(
      'Newest',
      name: 'newest',
      desc: '',
      args: [],
    );
  }

  /// `Highest price`
  String get highestPrice {
    return Intl.message(
      'Highest price',
      name: 'highestPrice',
      desc: '',
      args: [],
    );
  }

  /// `Lowest price`
  String get lowestPrice {
    return Intl.message(
      'Lowest price',
      name: 'lowestPrice',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Announcement title`
  String get anouncementTitle {
    return Intl.message(
      'Announcement title',
      name: 'anouncementTitle',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Street address`
  String get streetAddress {
    return Intl.message(
      'Street address',
      name: 'streetAddress',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Add new announcement`
  String get addNewAnouncement {
    return Intl.message(
      'Add new announcement',
      name: 'addNewAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Purpose of announcements`
  String get purposeOfAnouncement {
    return Intl.message(
      'Purpose of announcements',
      name: 'purposeOfAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Measruing unit`
  String get measruingUnit {
    return Intl.message(
      'Measruing unit',
      name: 'measruingUnit',
      desc: '',
      args: [],
    );
  }

  /// `Space in square meter`
  String get spaceInSquareMeters {
    return Intl.message(
      'Space in square meter',
      name: 'spaceInSquareMeters',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get totalPrice {
    return Intl.message(
      'Total price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `This field is requried`
  String get requiredField {
    return Intl.message(
      'This field is requried',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `The price per square meter will be automatically calculated once the area and the total price are set`
  String get priceWillBeCaluclatedAutomaticaly {
    return Intl.message(
      'The price per square meter will be automatically calculated once the area and the total price are set',
      name: 'priceWillBeCaluclatedAutomaticaly',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Auction informations`
  String get auctionInformations {
    return Intl.message(
      'Auction informations',
      name: 'auctionInformations',
      desc: '',
      args: [],
    );
  }

  /// `Desired price`
  String get desiredPrice {
    return Intl.message(
      'Desired price',
      name: 'desiredPrice',
      desc: '',
      args: [],
    );
  }

  /// `Starting date and time`
  String get startingDateAndTime {
    return Intl.message(
      'Starting date and time',
      name: 'startingDateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `Expiring date and time`
  String get expiringDateAndTime {
    return Intl.message(
      'Expiring date and time',
      name: 'expiringDateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `Put the width and direction of the street / streets surrounding your property according to the title deed. Streets that don't fit your property leave them empty`
  String get directionsOfStreetsSurroundingYourProperty {
    return Intl.message(
      'Put the width and direction of the street / streets surrounding your property according to the title deed. Streets that don\'t fit your property leave them empty',
      name: 'directionsOfStreetsSurroundingYourProperty',
      desc: '',
      args: [],
    );
  }

  /// `North street view`
  String get northStreetView {
    return Intl.message(
      'North street view',
      name: 'northStreetView',
      desc: '',
      args: [],
    );
  }

  /// `South street view`
  String get southStreetView {
    return Intl.message(
      'South street view',
      name: 'southStreetView',
      desc: '',
      args: [],
    );
  }

  /// `East street view`
  String get eastStreetView {
    return Intl.message(
      'East street view',
      name: 'eastStreetView',
      desc: '',
      args: [],
    );
  }

  /// `West street view`
  String get westStreetView {
    return Intl.message(
      'West street view',
      name: 'westStreetView',
      desc: '',
      args: [],
    );
  }

  /// `Determine property location if exist`
  String get determinePropertyLocationIfExist {
    return Intl.message(
      'Determine property location if exist',
      name: 'determinePropertyLocationIfExist',
      desc: '',
      args: [],
    );
  }

  /// `Locate now`
  String get locateNow {
    return Intl.message(
      'Locate now',
      name: 'locateNow',
      desc: '',
      args: [],
    );
  }

  /// `Lore details about the announcement`
  String get moreDetailsAboutTheAnnouncement {
    return Intl.message(
      'Lore details about the announcement',
      name: 'moreDetailsAboutTheAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Advertiser identity`
  String get advertiserIdentity {
    return Intl.message(
      'Advertiser identity',
      name: 'advertiserIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Buildings`
  String get buildings {
    return Intl.message(
      'Buildings',
      name: 'buildings',
      desc: '',
      args: [],
    );
  }

  /// `Number of appartments`
  String get numberOfAppartments {
    return Intl.message(
      'Number of appartments',
      name: 'numberOfAppartments',
      desc: '',
      args: [],
    );
  }

  /// `Number of floors`
  String get numberOfFloors {
    return Intl.message(
      'Number of floors',
      name: 'numberOfFloors',
      desc: '',
      args: [],
    );
  }

  /// `Number of shops`
  String get numberOfShops {
    return Intl.message(
      'Number of shops',
      name: 'numberOfShops',
      desc: '',
      args: [],
    );
  }

  /// `Number of elevators`
  String get numberOfElevators {
    return Intl.message(
      'Number of elevators',
      name: 'numberOfElevators',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Add pictures`
  String get addPropertyPictures {
    return Intl.message(
      'Add pictures',
      name: 'addPropertyPictures',
      desc: '',
      args: [],
    );
  }

  /// `Note: The maximum number of uploads is 7 images. Allowed formats: jpg, jpeg, png, bmp, gif`
  String get sevenImagesAllowedByMaximum {
    return Intl.message(
      'Note: The maximum number of uploads is 7 images. Allowed formats: jpg, jpeg, png, bmp, gif',
      name: 'sevenImagesAllowedByMaximum',
      desc: '',
      args: [],
    );
  }

  /// `Phone Camera`
  String get phoneCamera {
    return Intl.message(
      'Phone Camera',
      name: 'phoneCamera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to cancel a new announcement? All data listed will be erased`
  String get areYouSureYouWantToCancelPostingNewAnnouncement {
    return Intl.message(
      'Are you sure to cancel a new announcement? All data listed will be erased',
      name: 'areYouSureYouWantToCancelPostingNewAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Edit Announcement`
  String get editAnnouncement {
    return Intl.message(
      'Edit Announcement',
      name: 'editAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get chats {
    return Intl.message(
      'Messages',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Write your message`
  String get writeYourMessage {
    return Intl.message(
      'Write your message',
      name: 'writeYourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Auction starting time`
  String get auctionStartingTime {
    return Intl.message(
      'Auction starting time',
      name: 'auctionStartingTime',
      desc: '',
      args: [],
    );
  }

  /// `Particpate in auction`
  String get particpateInAuction {
    return Intl.message(
      'Particpate in auction',
      name: 'particpateInAuction',
      desc: '',
      args: [],
    );
  }

  /// `Edit Post`
  String get editPost {
    return Intl.message(
      'Edit Post',
      name: 'editPost',
      desc: '',
      args: [],
    );
  }

  /// `End Auction`
  String get endAuction {
    return Intl.message(
      'End Auction',
      name: 'endAuction',
      desc: '',
      args: [],
    );
  }

  /// `List of auction participants`
  String get listOfAuctionParticipants {
    return Intl.message(
      'List of auction participants',
      name: 'listOfAuctionParticipants',
      desc: '',
      args: [],
    );
  }

  /// `Delete Announcement`
  String get deleteAnnouncement {
    return Intl.message(
      'Delete Announcement',
      name: 'deleteAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Auction is over`
  String get auctionIsOver {
    return Intl.message(
      'Auction is over',
      name: 'auctionIsOver',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Suggested price (Saudi Rial)`
  String get suggestedPrice {
    return Intl.message(
      'Suggested price (Saudi Rial)',
      name: 'suggestedPrice',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `My favourites`
  String get myFavourites {
    return Intl.message(
      'My favourites',
      name: 'myFavourites',
      desc: '',
      args: [],
    );
  }

  /// `My participants in auctions`
  String get myParticipationInAuctions {
    return Intl.message(
      'My participants in auctions',
      name: 'myParticipationInAuctions',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Delete all notifications`
  String get deleteAllNotifications {
    return Intl.message(
      'Delete all notifications',
      name: 'deleteAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `About app`
  String get aboutApp {
    return Intl.message(
      'About app',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `WASIET`
  String get appNameInBothLanguages {
    return Intl.message(
      'WASIET',
      name: 'appNameInBothLanguages',
      desc: '',
      args: [],
    );
  }

  /// `Terms of service`
  String get termsOfService {
    return Intl.message(
      'Terms of service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `About our services`
  String get aboutOurServices {
    return Intl.message(
      'About our services',
      name: 'aboutOurServices',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Via social media`
  String get viaSocialMedia {
    return Intl.message(
      'Via social media',
      name: 'viaSocialMedia',
      desc: '',
      args: [],
    );
  }

  /// `Via email`
  String get viaEmail {
    return Intl.message(
      'Via email',
      name: 'viaEmail',
      desc: '',
      args: [],
    );
  }

  /// `First and last name`
  String get firstNameAndLastName {
    return Intl.message(
      'First and last name',
      name: 'firstNameAndLastName',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Message text`
  String get messageText {
    return Intl.message(
      'Message text',
      name: 'messageText',
      desc: '',
      args: [],
    );
  }

  /// `Edit my personal informations`
  String get editMyPersonnalInformations {
    return Intl.message(
      'Edit my personal informations',
      name: 'editMyPersonnalInformations',
      desc: '',
      args: [],
    );
  }

  /// `Follow up on complaints`
  String get followUpOnComplaints {
    return Intl.message(
      'Follow up on complaints',
      name: 'followUpOnComplaints',
      desc: '',
      args: [],
    );
  }

  /// `My announcements`
  String get myAnnouncements {
    return Intl.message(
      'My announcements',
      name: 'myAnnouncements',
      desc: '',
      args: [],
    );
  }

  /// `Notifications alert`
  String get notificationsAlert {
    return Intl.message(
      'Notifications alert',
      name: 'notificationsAlert',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Complaint details`
  String get complaintDetails {
    return Intl.message(
      'Complaint details',
      name: 'complaintDetails',
      desc: '',
      args: [],
    );
  }

  /// `Complaints`
  String get complaints {
    return Intl.message(
      'Complaints',
      name: 'complaints',
      desc: '',
      args: [],
    );
  }

  /// `Complaint number`
  String get complaintNumber {
    return Intl.message(
      'Complaint number',
      name: 'complaintNumber',
      desc: '',
      args: [],
    );
  }

  /// `Complaint number`
  String get complaintState {
    return Intl.message(
      'Complaint number',
      name: 'complaintState',
      desc: '',
      args: [],
    );
  }

  /// `Delete complaint`
  String get deleteComplaint {
    return Intl.message(
      'Delete complaint',
      name: 'deleteComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Managment response to the complaint`
  String get managmentResponseToTheComplaint {
    return Intl.message(
      'Managment response to the complaint',
      name: 'managmentResponseToTheComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Pictures`
  String get pictures {
    return Intl.message(
      'Pictures',
      name: 'pictures',
      desc: '',
      args: [],
    );
  }

  /// `Search in announcements`
  String get searchInAnnouncements {
    return Intl.message(
      'Search in announcements',
      name: 'searchInAnnouncements',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Please enter some data`
  String get pleaseEnterSomeData {
    return Intl.message(
      'Please enter some data',
      name: 'pleaseEnterSomeData',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Space range`
  String get spaceRange {
    return Intl.message(
      'Space range',
      name: 'spaceRange',
      desc: '',
      args: [],
    );
  }

  /// `Total price range`
  String get totalPriceRange {
    return Intl.message(
      'Total price range',
      name: 'totalPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `Square meter price range`
  String get squareMeterPriceRange {
    return Intl.message(
      'Square meter price range',
      name: 'squareMeterPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `Watch more`
  String get watchMore {
    return Intl.message(
      'Watch more',
      name: 'watchMore',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get changeLanguage {
    return Intl.message(
      'Change language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number`
  String get yourPhoneNumber {
    return Intl.message(
      'Your phone number',
      name: 'yourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Smart phone number`
  String get smartPhoneNumber {
    return Intl.message(
      'Smart phone number',
      name: 'smartPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `We only use your phone number to identify you, it will not be shared with anyone`
  String get weUseYourPhoneNumberOnlyToLocateYourIdentityItWillNotBeShared {
    return Intl.message(
      'We only use your phone number to identify you, it will not be shared with anyone',
      name: 'weUseYourPhoneNumberOnlyToLocateYourIdentityItWillNotBeShared',
      desc: '',
      args: [],
    );
  }

  /// `By clicking on this button you agree on`
  String get byClickingOnThisButtonYouAccept {
    return Intl.message(
      'By clicking on this button you agree on',
      name: 'byClickingOnThisButtonYouAccept',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use and privacy`
  String get UseTermsAndPrivacy {
    return Intl.message(
      'Terms of use and privacy',
      name: 'UseTermsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Our`
  String get ourOwn {
    return Intl.message(
      'Our',
      name: 'ourOwn',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Confirmtion code has been sent to your phone number`
  String get confirmationCodeHasBeenSentToYourPhoneNumber {
    return Intl.message(
      'Confirmtion code has been sent to your phone number',
      name: 'confirmationCodeHasBeenSentToYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get verificationCode {
    return Intl.message(
      'Verification code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Send verification code again in`
  String get sendVerificationCodeIn {
    return Intl.message(
      'Send verification code again in',
      name: 'sendVerificationCodeIn',
      desc: '',
      args: [],
    );
  }

  /// `Send again`
  String get sendAgain {
    return Intl.message(
      'Send again',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Personal informations`
  String get persnalInformations {
    return Intl.message(
      'Personal informations',
      name: 'persnalInformations',
      desc: '',
      args: [],
    );
  }

  /// `Save data`
  String get saveData {
    return Intl.message(
      'Save data',
      name: 'saveData',
      desc: '',
      args: [],
    );
  }

  /// `You haven't recieve verification code ?`
  String get youHaventRecieveVerificationCode {
    return Intl.message(
      'You haven\'t recieve verification code ?',
      name: 'youHaventRecieveVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Choose country`
  String get chooseCountry {
    return Intl.message(
      'Choose country',
      name: 'chooseCountry',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
