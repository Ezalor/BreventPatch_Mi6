.class public Lme/piebridge/prevent/a/c;
.super Ljava/lang/Object;
.source "ExternalFileUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)[Ljava/io/File;
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 19
    if-nez v0, :cond_a

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 22
    :cond_a
    return-object v0
.end method
