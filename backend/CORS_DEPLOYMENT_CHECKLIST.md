# Talaextra CORS & Deployment Checklist

## For Every New Deployment or Subdomain

1. **Add the new domain or subdomain to your `.env` file:**
   - Example:
     ALLOWED_ORIGINS=https://extracash.mkopaji.com,https://www.extracash.mkopaji.com,https://*.extracash.mkopaji.com,https://newsubdomain.extracash.mkopaji.com

2. **Deploy the latest backend code to your server.**
   - Make sure the code includes the wildcard CORS logic.

3. **Update the `.env` file on your production server.**
   - Use secure methods (CI/CD secrets, SSH, etc.)

4. **Restart the backend server.**
   - This is required for any `.env` or code changes to take effect.

5. **Test from the new domain or subdomain.**
   - If you see a CORS error, check the backend logs for the exact `Origin` being blocked.
   - Add the missing origin to `.env` if needed and restart again.

6. **Security Reminder:**
   - Only use wildcards for domains you fully control.
   - Never use `*` (allow all origins) in production for sensitive APIs.

7. **CI/CD Best Practice:**
   - Store `.env` values as secrets in your CI/CD pipeline.
   - Never commit real secrets to GitHub.

---

**If you follow this checklist, you will never have to change your backend code for CORS again—just update `.env` and restart!**
