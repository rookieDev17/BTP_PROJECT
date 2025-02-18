@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_AK_BOOKSUPPL_PROCESSOR as projection on ZEY_AK_BOOKSUPPL
{
   key TravelId,
   key BookingId,
   key BookingSupplementId,
   SupplementId,
   Price,
   CurrencyCode,
   LastChangedAt,
   /* Associations */
   _Booking: redirected to parent ZEY_AK_BOOKING_PROCESSOR,
   _Product,
   _SupplementText,
   _Travel: redirected to ZEY_AK_TRAVEL_PROCESSOR
}
