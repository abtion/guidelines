# Go Live Checklist

- [ ] Mails are not using @abtion.com in `from` field.
- [ ] Mail links point to the right domain.
- [ ] Delete test data, if any was created.
- [ ] Test with real users and get feedback.
- [ ] Logging should be using a large enough plan.
- [ ] If using SendGrid, check with their support how to avoid being suspended because of a sudden spike in mail.
- [ ] Check that the app's mails gets good scores with mail-tester.com.

## If a new domain is being used

- [ ] DMARC must be configured with policy reject.
- [ ] Check with the client whether they are going to send out mails using this new domain as `from`.
