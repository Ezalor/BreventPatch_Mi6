.class public Lme/piebridge/prevent/ui/UserGuideActivity;
.super Landroid/app/Activity;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/ui/UserGuideActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    .line 66
    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .registers 5

    .prologue
    .line 129
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 133
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(I)I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    if-le v1, v0, :cond_24

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_24

    .line 135
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 138
    :cond_24
    return-object p1
.end method

.method private a()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 179
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 180
    if-nez v1, :cond_a

    .line 190
    :cond_9
    :goto_9
    return-object v0

    .line 183
    :cond_a
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 186
    new-instance v2, Ljava/io/File;

    const-string v0, "Screenshots"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 190
    :cond_20
    new-instance v0, Ljava/io/File;

    const-string v1, "pr_donate.png"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 8

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    const-string v1, "com.android.vending"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 166
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    const-string v2, "app_name"

    const-string v3, "string"

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 168
    if-lez v2, :cond_1f

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    :cond_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    :cond_29
    return-object v0
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/UserGuideActivity;Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Ljava/lang/StringBuilder;)V

    .line 390
    const-string v1, "Android: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    if-eqz p1, :cond_3e

    .line 396
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, "3.1.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_3e
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 5

    .prologue
    const v2, 0x133a200

    .line 406
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_20

    const-string v0, "3.1.2"

    iget-object v1, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 407
    const-string v0, "Active: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_20
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_63

    .line 412
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_30

    .line 413
    const-string v0, "native"

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->e:Ljava/lang/String;

    .line 415
    :cond_30
    const-string v0, "Bridge: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, " v"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    const-string v0, "native"

    iget-object v1, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_5e

    .line 420
    const-string v0, " -> v"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    :cond_5e
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_63
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 145
    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 146
    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_17

    move v0, v1

    .line 159
    :goto_16
    return v0

    .line 149
    :cond_17
    invoke-direct {p0, v3, v4}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 150
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v4, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3a} :catch_3c

    move v0, v2

    .line 156
    goto :goto_16

    .line 157
    :catch_3c
    move-exception v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 159
    goto :goto_16
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/UserGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 198
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 199
    invoke-static {p0, v0}, Landroid/support/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 198
    :goto_11
    return v0

    .line 199
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private c()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 203
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 209
    :goto_a
    return v0

    .line 206
    :cond_b
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 207
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v1

    invoke-static {p0, v2, v0}, Landroid/support/a/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1c
    move v0, v1

    .line 209
    goto :goto_a
.end method

.method private d()V
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a()Ljava/io/File;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Ljava/io/File;)V

    .line 235
    :cond_12
    return-void
.end method

.method private e()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a()Ljava/io/File;

    move-result-object v2

    .line 239
    if-nez v2, :cond_9

    .line 262
    :goto_8
    return v0

    .line 243
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "wechat.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lme/piebridge/prevent/ui/a/d;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_46

    .line 248
    invoke-direct {p0, v2}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Ljava/io/File;)V

    .line 249
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->i()V

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.mm.action.BIZSHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v3, "LauncherUI.From.Scaner.Shortcut"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    :try_start_32
    invoke-virtual {p0, v2}, Lme/piebridge/prevent/ui/UserGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    :goto_35
    const/4 v2, 0x3

    if-ge v0, v2, :cond_51

    .line 257
    const v2, 0x7f050038

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_43} :catch_4d

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 244
    :catch_46
    move-exception v1

    .line 245
    const-string v2, "cannot dump wechat"

    invoke-static {v2, v1}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 259
    :catch_4d
    move-exception v0

    .line 260
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->j()V

    :cond_51
    move v0, v1

    .line 262
    goto :goto_8
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->i()V

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const-string v1, "alipayqr://platformapi/startapp?saId=10000007&qrcode=https%3A%2F%2Fqr.alipay.com%2Faex058688yvwdonhyxetr12"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    :try_start_16
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_1b

    .line 275
    :goto_19
    const/4 v0, 0x1

    return v0

    .line 272
    :catch_1b
    move-exception v0

    .line 273
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->j()V

    goto :goto_19
.end method

.method private g()Z
    .registers 4

    .prologue
    .line 279
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->i()V

    .line 281
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=LB3C4C5QPF8QJ&item_name=Donate%20to%20%22Prevent%20Running%22&item_number=donate%2dpr"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_13} :catch_15

    .line 285
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 282
    :catch_15
    move-exception v0

    goto :goto_13
.end method

.method private h()V
    .registers 2

    .prologue
    .line 327
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 328
    return-void
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 331
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 332
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(I)I

    move-result v1

    .line 333
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 334
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 335
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-static {p0, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    .line 337
    iget-object v2, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 339
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 341
    :cond_3d
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 345
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->a:Landroid/app/ProgressDialog;

    .line 348
    :cond_c
    return-void
.end method

.method private k()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 351
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 352
    const/high16 v0, 0x50000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    const-string v0, "me.piebridge.prevent.GET_INFO"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v0, "prevent"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    const-string v0, "sending get info broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2d

    .line 357
    new-instance v0, Lme/piebridge/prevent/ui/UserGuideActivity$a;

    invoke-direct {v0, p0, v4}, Lme/piebridge/prevent/ui/UserGuideActivity$a;-><init>(Lme/piebridge/prevent/ui/UserGuideActivity;Lme/piebridge/prevent/ui/UserGuideActivity$1;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->b:Landroid/content/BroadcastReceiver;

    .line 359
    :cond_2d
    const-string v2, "android.permission.SHUTDOWN"

    iget-object v3, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->b:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lme/piebridge/prevent/ui/UserGuideActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 360
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lme/piebridge/prevent/ui/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3.1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lme/piebridge/prevent/ui/UserGuideActivity$1;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/UserGuideActivity$1;-><init>(Lme/piebridge/prevent/ui/UserGuideActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 439
    return-void
.end method

.method private m()V
    .registers 2

    .prologue
    .line 442
    const v0, 0x1010031

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->f:Ljava/lang/String;

    .line 443
    const v0, 0x101009b

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->h:Ljava/lang/String;

    .line 444
    const v0, 0x1010036

    invoke-static {p0, v0}, Lme/piebridge/prevent/ui/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 445
    invoke-static {v0}, Lme/piebridge/prevent/ui/a/a;->b(I)I

    move-result v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->g:Ljava/lang/String;

    .line 446
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 291
    const v1, 0x7f090003

    if-ne v0, v1, :cond_d

    .line 292
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->e()Z

    .line 298
    :cond_c
    :goto_c
    return-void

    .line 293
    :cond_d
    const v1, 0x7f090002

    if-ne v0, v1, :cond_16

    .line 294
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->f()Z

    goto :goto_c

    .line 295
    :cond_16
    const v1, 0x7f090004

    if-ne v0, v1, :cond_c

    .line 296
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->g()Z

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .prologue
    const v10, 0x7f090004

    const v9, 0x7f090003

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->a(Landroid/app/Activity;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->setContentView(I)V

    .line 77
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->b(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 79
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_24
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 83
    const v1, 0x1010031

    invoke-static {p0, v1}, Lme/piebridge/prevent/ui/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 88
    const-string v1, "about.zh.html"

    move-object v6, v1

    .line 93
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lme/piebridge/prevent/ui/a/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->m()V

    .line 95
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lme/piebridge/prevent/ui/UserGuideActivity;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const/4 v1, 0x0

    const-string v3, "text/html; charset=utf-8"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_7d} :catch_b9

    .line 101
    :goto_7d
    const v0, 0x7f090002

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(ILjava/lang/String;)Z

    .line 102
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 103
    const-string v0, "com.tencent.mm"

    invoke-direct {p0, v9, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(ILjava/lang/String;)Z

    .line 107
    :goto_90
    const-string v0, "com.paypal.android.p2pmobile"

    invoke-direct {p0, v10, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 108
    invoke-virtual {p0, v10}, Lme/piebridge/prevent/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-direct {p0, v1}, Lme/piebridge/prevent/ui/UserGuideActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_b1
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->k()V

    .line 114
    return-void

    .line 90
    :cond_b5
    const-string v1, "about.en.html"

    move-object v6, v1

    goto :goto_4f

    .line 97
    :catch_b9
    move-exception v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7d

    .line 105
    :cond_e7
    invoke-virtual {p0, v9}, Lme/piebridge/prevent/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_90
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .prologue
    const v3, 0x7f050040

    const v2, 0x7f050010

    const/high16 v1, 0x7f050000

    const/4 v0, 0x0

    .line 302
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 303
    invoke-interface {p1, v0, v3, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 305
    invoke-interface {p1, v0, v2, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->d()V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 314
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 315
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->finish()V

    .line 323
    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_e
    const v1, 0x7f050010

    if-ne v0, v1, :cond_17

    .line 317
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->h()V

    goto :goto_c

    .line 318
    :cond_17
    const v1, 0x7f050040

    if-ne v0, v1, :cond_20

    .line 319
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->l()V

    goto :goto_c

    .line 320
    :cond_20
    const/high16 v1, 0x7f050000

    if-ne v0, v1, :cond_c

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/piebridge/prevent/ui/AdvancedSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    .line 214
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 215
    array-length v0, p3

    if-lez v0, :cond_f

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_f

    .line 216
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->e()Z

    .line 221
    :cond_e
    :goto_e
    return-void

    .line 218
    :cond_f
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-direct {p0}, Lme/piebridge/prevent/ui/UserGuideActivity;->j()V

    .line 120
    return-void
.end method
