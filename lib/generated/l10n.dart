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

  /// `find something`
  String get searchForSomething {
    return Intl.message(
      'find something',
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

  /// `openning price`
  String get openningPrice {
    return Intl.message(
      'openning price',
      name: 'openningPrice',
      desc: '',
      args: [],
    );
  }

  /// `remaining time`
  String get remainingTime {
    return Intl.message(
      'remaining time',
      name: 'remainingTime',
      desc: '',
      args: [],
    );
  }

  /// `details`
  String get details {
    return Intl.message(
      'details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `rating and comments`
  String get ratingAndComments {
    return Intl.message(
      'rating and comments',
      name: 'ratingAndComments',
      desc: '',
      args: [],
    );
  }

  /// `announcement number`
  String get announcementNumber {
    return Intl.message(
      'announcement number',
      name: 'announcementNumber',
      desc: '',
      args: [],
    );
  }

  /// `technical card`
  String get technicalCard {
    return Intl.message(
      'technical card',
      name: 'technicalCard',
      desc: '',
      args: [],
    );
  }

  /// `property type`
  String get propertyType {
    return Intl.message(
      'property type',
      name: 'propertyType',
      desc: '',
      args: [],
    );
  }

  /// `space`
  String get space {
    return Intl.message(
      'space',
      name: 'space',
      desc: '',
      args: [],
    );
  }

  /// `square meter price`
  String get squareMeterPrice {
    return Intl.message(
      'square meter price',
      name: 'squareMeterPrice',
      desc: '',
      args: [],
    );
  }

  /// `number of rooms`
  String get roomsNumber {
    return Intl.message(
      'number of rooms',
      name: 'roomsNumber',
      desc: '',
      args: [],
    );
  }

  /// `number of bathrooms`
  String get bathsNumber {
    return Intl.message(
      'number of bathrooms',
      name: 'bathsNumber',
      desc: '',
      args: [],
    );
  }

  /// `number of halls`
  String get hallsNumber {
    return Intl.message(
      'number of halls',
      name: 'hallsNumber',
      desc: '',
      args: [],
    );
  }

  /// `property age`
  String get propertyAge {
    return Intl.message(
      'property age',
      name: 'propertyAge',
      desc: '',
      args: [],
    );
  }

  /// `description`
  String get description {
    return Intl.message(
      'description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `report announcement`
  String get reportAnouncement {
    return Intl.message(
      'report announcement',
      name: 'reportAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `add comment`
  String get addComment {
    return Intl.message(
      'add comment',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `your rate`
  String get yourRate {
    return Intl.message(
      'your rate',
      name: 'yourRate',
      desc: '',
      args: [],
    );
  }

  /// `your comment`
  String get yourComment {
    return Intl.message(
      'your comment',
      name: 'yourComment',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm {
    return Intl.message(
      'confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `email address`
  String get emailAddress {
    return Intl.message(
      'email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phoneNumber {
    return Intl.message(
      'phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `country`
  String get country {
    return Intl.message(
      'country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `previous announcements`
  String get previousAnouncements {
    return Intl.message(
      'previous announcements',
      name: 'previousAnouncements',
      desc: '',
      args: [],
    );
  }

  /// `there is nothing at the moment`
  String get thereIsNothingAtTheMoment {
    return Intl.message(
      'there is nothing at the moment',
      name: 'thereIsNothingAtTheMoment',
      desc: '',
      args: [],
    );
  }

  /// `report this person`
  String get reportThisPerson {
    return Intl.message(
      'report this person',
      name: 'reportThisPerson',
      desc: '',
      args: [],
    );
  }

  /// `my announcements`
  String get myAnouncements {
    return Intl.message(
      'my announcements',
      name: 'myAnouncements',
      desc: '',
      args: [],
    );
  }

  /// `edit`
  String get edit {
    return Intl.message(
      'edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `delete`
  String get delete {
    return Intl.message(
      'delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `filter by`
  String get filterBy {
    return Intl.message(
      'filter by',
      name: 'filterBy',
      desc: '',
      args: [],
    );
  }

  /// `sort by`
  String get sortBy {
    return Intl.message(
      'sort by',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `nothing`
  String get nothing {
    return Intl.message(
      'nothing',
      name: 'nothing',
      desc: '',
      args: [],
    );
  }

  /// `newest`
  String get newest {
    return Intl.message(
      'newest',
      name: 'newest',
      desc: '',
      args: [],
    );
  }

  /// `highest price`
  String get highestPrice {
    return Intl.message(
      'highest price',
      name: 'highestPrice',
      desc: '',
      args: [],
    );
  }

  /// `lowest price`
  String get lowestPrice {
    return Intl.message(
      'lowest price',
      name: 'lowestPrice',
      desc: '',
      args: [],
    );
  }

  /// `reset`
  String get reset {
    return Intl.message(
      'reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `announcement title`
  String get anouncementTitle {
    return Intl.message(
      'announcement title',
      name: 'anouncementTitle',
      desc: '',
      args: [],
    );
  }

  /// `region`
  String get region {
    return Intl.message(
      'region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `city`
  String get city {
    return Intl.message(
      'city',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `street address`
  String get streetAddress {
    return Intl.message(
      'street address',
      name: 'streetAddress',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `add new announcement`
  String get addNewAnouncement {
    return Intl.message(
      'add new announcement',
      name: 'addNewAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `purpose of announcements`
  String get purposeOfAnouncement {
    return Intl.message(
      'purpose of announcements',
      name: 'purposeOfAnouncement',
      desc: '',
      args: [],
    );
  }

  /// `measruing unit`
  String get measruingUnit {
    return Intl.message(
      'measruing unit',
      name: 'measruingUnit',
      desc: '',
      args: [],
    );
  }

  /// `space in square meter`
  String get spaceInSquareMeters {
    return Intl.message(
      'space in square meter',
      name: 'spaceInSquareMeters',
      desc: '',
      args: [],
    );
  }

  /// `total price`
  String get totalPrice {
    return Intl.message(
      'total price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `this field is requried`
  String get requiredField {
    return Intl.message(
      'this field is requried',
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

  /// `previous`
  String get previous {
    return Intl.message(
      'previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `auction informations`
  String get auctionInformations {
    return Intl.message(
      'auction informations',
      name: 'auctionInformations',
      desc: '',
      args: [],
    );
  }

  /// `desired price`
  String get desiredPrice {
    return Intl.message(
      'desired price',
      name: 'desiredPrice',
      desc: '',
      args: [],
    );
  }

  /// `starting date and time`
  String get startingDateAndTime {
    return Intl.message(
      'starting date and time',
      name: 'startingDateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `expiring date and time`
  String get expiringDateAndTime {
    return Intl.message(
      'expiring date and time',
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

  /// `north street view`
  String get northStreetView {
    return Intl.message(
      'north street view',
      name: 'northStreetView',
      desc: '',
      args: [],
    );
  }

  /// `south street view`
  String get southStreetView {
    return Intl.message(
      'south street view',
      name: 'southStreetView',
      desc: '',
      args: [],
    );
  }

  /// `east street view`
  String get eastStreetView {
    return Intl.message(
      'east street view',
      name: 'eastStreetView',
      desc: '',
      args: [],
    );
  }

  /// `west street view`
  String get westStreetView {
    return Intl.message(
      'west street view',
      name: 'westStreetView',
      desc: '',
      args: [],
    );
  }

  /// `determine property location if exist`
  String get determinePropertyLocationIfExist {
    return Intl.message(
      'determine property location if exist',
      name: 'determinePropertyLocationIfExist',
      desc: '',
      args: [],
    );
  }

  /// `locate now`
  String get locateNow {
    return Intl.message(
      'locate now',
      name: 'locateNow',
      desc: '',
      args: [],
    );
  }

  /// `more details about the announcement`
  String get moreDetailsAboutTheAnnouncement {
    return Intl.message(
      'more details about the announcement',
      name: 'moreDetailsAboutTheAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `advertiser identity`
  String get advertiserIdentity {
    return Intl.message(
      'advertiser identity',
      name: 'advertiserIdentity',
      desc: '',
      args: [],
    );
  }

  /// `buildings`
  String get buildings {
    return Intl.message(
      'buildings',
      name: 'buildings',
      desc: '',
      args: [],
    );
  }

  /// `number of appartments`
  String get numberOfAppartments {
    return Intl.message(
      'number of appartments',
      name: 'numberOfAppartments',
      desc: '',
      args: [],
    );
  }

  /// `number of floors`
  String get numberOfFloors {
    return Intl.message(
      'number of floors',
      name: 'numberOfFloors',
      desc: '',
      args: [],
    );
  }

  /// `number of shops`
  String get numberOfShops {
    return Intl.message(
      'number of shops',
      name: 'numberOfShops',
      desc: '',
      args: [],
    );
  }

  /// `number of elevators`
  String get numberOfElevators {
    return Intl.message(
      'number of elevators',
      name: 'numberOfElevators',
      desc: '',
      args: [],
    );
  }

  /// `available`
  String get available {
    return Intl.message(
      'available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `add pictures`
  String get addPropertyPictures {
    return Intl.message(
      'add pictures',
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

  /// `phone camera`
  String get phoneCamera {
    return Intl.message(
      'phone camera',
      name: 'phoneCamera',
      desc: '',
      args: [],
    );
  }

  /// `gallery`
  String get gallery {
    return Intl.message(
      'gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `information`
  String get information {
    return Intl.message(
      'information',
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

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message(
      'no',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `save`
  String get save {
    return Intl.message(
      'save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `edit announcement`
  String get editAnnouncement {
    return Intl.message(
      'edit announcement',
      name: 'editAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `messages`
  String get chats {
    return Intl.message(
      'messages',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `write your message`
  String get writeYourMessage {
    return Intl.message(
      'write your message',
      name: 'writeYourMessage',
      desc: '',
      args: [],
    );
  }

  /// `auction starting time`
  String get auctionStartingTime {
    return Intl.message(
      'auction starting time',
      name: 'auctionStartingTime',
      desc: '',
      args: [],
    );
  }

  /// `particpate in auction`
  String get particpateInAuction {
    return Intl.message(
      'particpate in auction',
      name: 'particpateInAuction',
      desc: '',
      args: [],
    );
  }

  /// `edit post`
  String get editPost {
    return Intl.message(
      'edit post',
      name: 'editPost',
      desc: '',
      args: [],
    );
  }

  /// `end auction`
  String get endAuction {
    return Intl.message(
      'end auction',
      name: 'endAuction',
      desc: '',
      args: [],
    );
  }

  /// `list of auction participants`
  String get listOfAuctionParticipants {
    return Intl.message(
      'list of auction participants',
      name: 'listOfAuctionParticipants',
      desc: '',
      args: [],
    );
  }

  /// `delete announcement`
  String get deleteAnnouncement {
    return Intl.message(
      'delete announcement',
      name: 'deleteAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `ok`
  String get ok {
    return Intl.message(
      'ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `auction is over`
  String get auctionIsOver {
    return Intl.message(
      'auction is over',
      name: 'auctionIsOver',
      desc: '',
      args: [],
    );
  }

  /// `price`
  String get price {
    return Intl.message(
      'price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `suggested price (Saudi Rial)`
  String get suggestedPrice {
    return Intl.message(
      'suggested price (Saudi Rial)',
      name: 'suggestedPrice',
      desc: '',
      args: [],
    );
  }

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `my favourites`
  String get myFavourites {
    return Intl.message(
      'my favourites',
      name: 'myFavourites',
      desc: '',
      args: [],
    );
  }

  /// `my participants in auctions`
  String get myParticipationInAuctions {
    return Intl.message(
      'my participants in auctions',
      name: 'myParticipationInAuctions',
      desc: '',
      args: [],
    );
  }

  /// `notifications`
  String get notifications {
    return Intl.message(
      'notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `delete all notifications`
  String get deleteAllNotifications {
    return Intl.message(
      'delete all notifications',
      name: 'deleteAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `about app`
  String get aboutApp {
    return Intl.message(
      'about app',
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

  /// `terms of service`
  String get termsOfService {
    return Intl.message(
      'terms of service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `about our services`
  String get aboutOurServices {
    return Intl.message(
      'about our services',
      name: 'aboutOurServices',
      desc: '',
      args: [],
    );
  }

  /// `contact us`
  String get contactUs {
    return Intl.message(
      'contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `via social media`
  String get viaSocialMedia {
    return Intl.message(
      'via social media',
      name: 'viaSocialMedia',
      desc: '',
      args: [],
    );
  }

  /// `via email`
  String get viaEmail {
    return Intl.message(
      'via email',
      name: 'viaEmail',
      desc: '',
      args: [],
    );
  }

  /// `first and last name`
  String get firstNameAndLastName {
    return Intl.message(
      'first and last name',
      name: 'firstNameAndLastName',
      desc: '',
      args: [],
    );
  }

  /// `phone`
  String get phone {
    return Intl.message(
      'phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `subject`
  String get subject {
    return Intl.message(
      'subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `message`
  String get message {
    return Intl.message(
      'message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `message text`
  String get messageText {
    return Intl.message(
      'message text',
      name: 'messageText',
      desc: '',
      args: [],
    );
  }

  /// `edit my personal informations`
  String get editMyPersonnalInformations {
    return Intl.message(
      'edit my personal informations',
      name: 'editMyPersonnalInformations',
      desc: '',
      args: [],
    );
  }

  /// `follow up on complaints`
  String get followUpOnComplaints {
    return Intl.message(
      'follow up on complaints',
      name: 'followUpOnComplaints',
      desc: '',
      args: [],
    );
  }

  /// `my announcements`
  String get myAnnouncements {
    return Intl.message(
      'my announcements',
      name: 'myAnnouncements',
      desc: '',
      args: [],
    );
  }

  /// `notifications alert`
  String get notificationsAlert {
    return Intl.message(
      'notifications alert',
      name: 'notificationsAlert',
      desc: '',
      args: [],
    );
  }

  /// `logout`
  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `complaint details`
  String get complaintDetails {
    return Intl.message(
      'complaint details',
      name: 'complaintDetails',
      desc: '',
      args: [],
    );
  }

  /// `complaints`
  String get complaints {
    return Intl.message(
      'complaints',
      name: 'complaints',
      desc: '',
      args: [],
    );
  }

  /// `complaint number`
  String get complaintNumber {
    return Intl.message(
      'complaint number',
      name: 'complaintNumber',
      desc: '',
      args: [],
    );
  }

  /// `complaint number`
  String get complaintState {
    return Intl.message(
      'complaint number',
      name: 'complaintState',
      desc: '',
      args: [],
    );
  }

  /// `delete complaint`
  String get deleteComplaint {
    return Intl.message(
      'delete complaint',
      name: 'deleteComplaint',
      desc: '',
      args: [],
    );
  }

  /// `managment response to the complaint`
  String get managmentResponseToTheComplaint {
    return Intl.message(
      'managment response to the complaint',
      name: 'managmentResponseToTheComplaint',
      desc: '',
      args: [],
    );
  }

  /// `pictures`
  String get pictures {
    return Intl.message(
      'pictures',
      name: 'pictures',
      desc: '',
      args: [],
    );
  }

  /// `search in announcements`
  String get searchInAnnouncements {
    return Intl.message(
      'search in announcements',
      name: 'searchInAnnouncements',
      desc: '',
      args: [],
    );
  }

  /// `result`
  String get result {
    return Intl.message(
      'result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `please enter some data`
  String get pleaseEnterSomeData {
    return Intl.message(
      'please enter some data',
      name: 'pleaseEnterSomeData',
      desc: '',
      args: [],
    );
  }

  /// `filter`
  String get filter {
    return Intl.message(
      'filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `space range`
  String get spaceRange {
    return Intl.message(
      'space range',
      name: 'spaceRange',
      desc: '',
      args: [],
    );
  }

  /// `total price range`
  String get totalPriceRange {
    return Intl.message(
      'total price range',
      name: 'totalPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `square meter price range`
  String get squareMeterPriceRange {
    return Intl.message(
      'square meter price range',
      name: 'squareMeterPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `watch more`
  String get watchMore {
    return Intl.message(
      'watch more',
      name: 'watchMore',
      desc: '',
      args: [],
    );
  }

  /// `settings`
  String get settings {
    return Intl.message(
      'settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `change language`
  String get changeLanguage {
    return Intl.message(
      'change language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `your phone number`
  String get yourPhoneNumber {
    return Intl.message(
      'your phone number',
      name: 'yourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `smart phone number`
  String get smartPhoneNumber {
    return Intl.message(
      'smart phone number',
      name: 'smartPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'please enter your phone number',
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

  /// `by clicking on this button you agree on`
  String get byClickingOnThisButtonYouAccept {
    return Intl.message(
      'by clicking on this button you agree on',
      name: 'byClickingOnThisButtonYouAccept',
      desc: '',
      args: [],
    );
  }

  /// `terms of use and privacy`
  String get UseTermsAndPrivacy {
    return Intl.message(
      'terms of use and privacy',
      name: 'UseTermsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `our`
  String get ourOwn {
    return Intl.message(
      'our',
      name: 'ourOwn',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continueText {
    return Intl.message(
      'continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `confirmtion code has been sent to your phone number`
  String get confirmationCodeHasBeenSentToYourPhoneNumber {
    return Intl.message(
      'confirmtion code has been sent to your phone number',
      name: 'confirmationCodeHasBeenSentToYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `verification code`
  String get verificationCode {
    return Intl.message(
      'verification code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `send verification code again in`
  String get sendVerificationCodeIn {
    return Intl.message(
      'send verification code again in',
      name: 'sendVerificationCodeIn',
      desc: '',
      args: [],
    );
  }

  /// `send again`
  String get sendAgain {
    return Intl.message(
      'send again',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `personal informations`
  String get persnalInformations {
    return Intl.message(
      'personal informations',
      name: 'persnalInformations',
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
