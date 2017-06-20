.class public Lme/piebridge/prevent/ui/a/h;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 29
    if-eqz v1, :cond_e

    if-nez v2, :cond_f

    .line 66
    :cond_e
    :goto_e
    return-void

    .line 33
    :cond_f
    :try_start_f
    new-instance v4, Ljava/io/File;

    const-string v3, "logs-v3.1.2.zip"

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 37
    if-nez v1, :cond_a3

    .line 38
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    move-object v3, v1

    .line 40
    :goto_2a
    const/4 v1, 0x1

    .line 41
    array-length v6, v3

    move v2, v0

    :goto_2d
    if-ge v2, v6, :cond_48

    aget-object v1, v3, v2

    .line 43
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 44
    invoke-static {v5, v1}, Lme/piebridge/prevent/ui/a/d;->a(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 45
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 41
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2d

    .line 48
    :cond_48
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/data/de.robv.android.xposed.installer/log/error.log"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 51
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v3, "xposed.log"

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 52
    invoke-static {v5, v2}, Lme/piebridge/prevent/ui/a/d;->a(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 53
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 56
    :goto_80
    if-eqz v0, :cond_8f

    .line 57
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "empty"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 58
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 61
    :cond_8f
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 62
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lme/piebridge/prevent/ui/a/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_97} :catch_99

    goto/16 :goto_e

    .line 63
    :catch_99
    move-exception v0

    .line 64
    const-string v1, "cannot report bug"

    invoke-static {v1, v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_a1
    move v0, v1

    goto :goto_80

    :cond_a3
    move-object v3, v1

    goto :goto_2a
.end method

.method public static b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 70
    if-nez v0, :cond_7

    .line 79
    :cond_6
    return-void

    .line 73
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string v5, "boot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 73
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 83
    if-nez v1, :cond_c

    .line 90
    :cond_6
    return-void

    .line 94
    :cond_7
    const-wide/16 v2, 0x400

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_25

    .line 87
    :cond_c
    :goto_c
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string v5, "completed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 95
    :catch_25
    move-exception v0

    .line 96
    const-string v2, "cannot sleep"

    invoke-static {v2, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
