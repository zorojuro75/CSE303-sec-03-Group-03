from django.db import models

# Create your models here.
class UserT(models.Model):
    username = models.CharField(primary_key=True, max_length=50)
    password = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'user_t'
    def username(self):
        return self.username
    def password(self):
        return self.password