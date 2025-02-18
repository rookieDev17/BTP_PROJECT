@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_AK_BOOKING_SUPPL_APPROVER as projection on ZEY_AK_BOOKSUPPL
{
   key TravelId,
   key BookingId,
   key BookingSupplementId,
   SupplementId,
   Price,
   CurrencyCode,
   LastChangedAt,
   /* Associations */
   _Booking: redirected to parent ZEY_AK_BOOKING_APPROVER,
   _Product,
   _SupplementText,
   _Travel: redirected to ZEY_AK_TRAVEL_APPROVER
}
