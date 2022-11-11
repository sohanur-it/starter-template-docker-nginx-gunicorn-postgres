from django.db import models

# Create your models here.

class ImageModel(models.Model):
    files = models.ImageField(upload_to='uploads/')