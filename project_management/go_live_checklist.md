# Go Live Checklist

- [ ] Use a production-grade hosting plan, not a free or development tier.
- [ ] Use a production-ready database with automatic backups enabled.
- [ ] Mails are not using @abtion.com in `from` field.
- [ ] Mail links point to the right domain.
- [ ] Delete test data, if any was created.
- [ ] Test with real users and get feedback.
- [ ] Logging should be using a large enough plan.
- [ ] Verify your mail provider's sending limits and confirm the app won't hit them on launch.
- [ ] Check that the app's mails gets good scores with mail-tester.com.

## If a new domain is being used

- [ ] DMARC must be configured with policy reject.
- [ ] Check with the client whether they are going to send out mails using this new domain as `from` (with other services than the app we have just made), if so, have them check their mails with mail-tester.com.
