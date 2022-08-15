from django.db import models

# Create your models here.
class MemberT(models.Model):
    idmember_t = models.IntegerField(primary_key=True)
    member_name = models.CharField(max_length=45)
    member_age = models.IntegerField()
    class Meta:
        managed = False
        db_table = 'member_t'