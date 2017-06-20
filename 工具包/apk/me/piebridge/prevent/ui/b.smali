.class public abstract Lme/piebridge/prevent/ui/b;
.super Landroid/app/ListFragment;
.source "PreventFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/ui/b$d;,
        Lme/piebridge/prevent/ui/b$e;,
        Lme/piebridge/prevent/ui/b$a;,
        Lme/piebridge/prevent/ui/b$f;,
        Lme/piebridge/prevent/ui/b$b;,
        Lme/piebridge/prevent/ui/b$c;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lme/piebridge/prevent/ui/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z


# instance fields
.field private a:Lme/piebridge/prevent/ui/b$a;

.field private b:Lme/piebridge/prevent/ui/PreventActivity;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/EditText;

.field private g:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/ui/b;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/b;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a(Landroid/view/ContextMenu;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .prologue
    .line 217
    invoke-direct {p0}, Lme/piebridge/prevent/ui/b;->h()I

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    if-gt v1, v0, :cond_e

    .line 219
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;

    .line 224
    :cond_d
    :goto_d
    return-void

    .line 220
    :cond_e
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_d

    .line 221
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;

    goto :goto_d
.end method

.method private a(Landroid/view/Menu;Ljava/lang/String;)V
    .registers 7

    .prologue
    const v3, 0x7f050035

    const v2, 0x7f050030

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 210
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 214
    :goto_16
    return-void

    .line 212
    :cond_17
    invoke-interface {p1, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_16
.end method

.method private a(Lme/piebridge/prevent/ui/PreventActivity;Z)V
    .registers 9

    .prologue
    .line 350
    if-nez p2, :cond_6

    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    if-nez v0, :cond_4a

    .line 351
    :cond_6
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/util/Set;

    move-result-object v3

    .line 355
    :goto_a
    if-nez p2, :cond_18

    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 356
    :cond_18
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-eqz v0, :cond_20

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    :cond_20
    new-instance v0, Lme/piebridge/prevent/ui/b$a;

    iget-object v4, p0, Lme/piebridge/prevent/ui/b;->d:Landroid/view/View;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->d()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lme/piebridge/prevent/ui/b$a;-><init>(Lme/piebridge/prevent/ui/b;Lme/piebridge/prevent/ui/PreventActivity;Ljava/util/Set;Landroid/view/View;Z)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    .line 360
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    if-nez v0, :cond_3f

    .line 362
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    .line 364
    :cond_3f
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 365
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_49
    :goto_49
    return-void

    .line 353
    :cond_4a
    iget-object v3, p0, Lme/piebridge/prevent/ui/b;->c:Ljava/util/Set;

    goto :goto_a

    .line 367
    :cond_4d
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->notifyDataSetChanged()V

    .line 368
    invoke-direct {p0}, Lme/piebridge/prevent/ui/b;->i()Lme/piebridge/prevent/ui/b$c;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_49

    .line 370
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, v0, Lme/piebridge/prevent/ui/b$c;->a:I

    iget v0, v0, Lme/piebridge/prevent/ui/b$c;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_49
.end method

.method private a(Lme/piebridge/prevent/ui/b$c;)V
    .registers 4

    .prologue
    .line 341
    sget-object v0, Lme/piebridge/prevent/ui/b;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/b;Z)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/b;->c(Z)V

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .registers 8

    .prologue
    .line 274
    const v0, 0x7f050003

    if-ne p1, v0, :cond_1a

    .line 275
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 281
    :goto_7
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lme/piebridge/prevent/ui/PreventActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    const/4 v0, 0x1

    :goto_19
    return v0

    .line 276
    :cond_1a
    const v0, 0x7f05003b

    if-ne p1, v0, :cond_22

    .line 277
    const-string v0, "android.intent.action.DELETE"

    goto :goto_7

    .line 279
    :cond_22
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private a(ILme/piebridge/prevent/ui/b$f;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    const v0, 0x7f050030

    if-ne p1, v0, :cond_1d

    .line 295
    iget-object v0, p2, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p2, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    iget-object v1, p2, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    invoke-static {v1, v2}, Lme/piebridge/prevent/ui/a/i;->a(Ljava/util/Set;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0, p3, v3}, Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/lang/String;Z)V

    .line 302
    :cond_1c
    :goto_1c
    return v3

    .line 298
    :cond_1d
    const v0, 0x7f050035

    if-ne p1, v0, :cond_1c

    .line 299
    iget-object v0, p2, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0, p3, v2}, Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/lang/String;Z)V

    goto :goto_1c
.end method

.method private a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .registers 4

    .prologue
    .line 181
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(Lme/piebridge/prevent/ui/b$f;Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 236
    const v0, 0x7f050003

    if-eq p3, v0, :cond_a

    const v0, 0x7f05003b

    if-ne p3, v0, :cond_f

    .line 237
    :cond_a
    invoke-direct {p0, p3, p2}, Lme/piebridge/prevent/ui/b;->a(ILjava/lang/String;)Z

    .line 245
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_f
    const v0, 0x7f050005

    if-ne p3, v0, :cond_18

    .line 239
    invoke-direct {p0, p2}, Lme/piebridge/prevent/ui/b;->b(Ljava/lang/String;)Z

    goto :goto_d

    .line 240
    :cond_18
    const v0, 0x7f050035

    if-eq p3, v0, :cond_22

    const v0, 0x7f050030

    if-ne p3, v0, :cond_26

    .line 241
    :cond_22
    invoke-direct {p0, p3, p1, p2}, Lme/piebridge/prevent/ui/b;->a(ILme/piebridge/prevent/ui/b$f;Ljava/lang/String;)Z

    goto :goto_d

    .line 242
    :cond_26
    const v0, 0x7f05002e

    if-ne p3, v0, :cond_d

    .line 243
    invoke-direct {p0, p2}, Lme/piebridge/prevent/ui/b;->c(Ljava/lang/String;)Z

    goto :goto_d
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/b;)Lme/piebridge/prevent/ui/b$a;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 251
    :try_start_1
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_2e

    move-result-object v1

    .line 256
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    .line 258
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "app_package"

    .line 259
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "app_uid"

    .line 260
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 262
    :try_start_27
    iget-object v2, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v2, v1}, Lme/piebridge/prevent/ui/PreventActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_2c} :catch_46

    .line 263
    const/4 v0, 0x1

    .line 268
    :goto_2d
    return v0

    .line 252
    :catch_2e
    move-exception v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 264
    :catch_46
    move-exception v1

    .line 265
    sput-boolean v0, Lme/piebridge/prevent/ui/b;->j:Z

    .line 266
    iget-object v2, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "app_notification"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot start notification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lme/piebridge/prevent/ui/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method static synthetic c(Lme/piebridge/prevent/ui/b;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Z)V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-eqz v0, :cond_1e

    .line 96
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->e()Ljava/util/Set;

    move-result-object v0

    .line 97
    if-eqz p1, :cond_1f

    .line 98
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v1}, Lme/piebridge/prevent/ui/b$a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    :goto_19
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->notifyDataSetChanged()V

    .line 104
    :cond_1e
    return-void

    .line 100
    :cond_1f
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_19
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/b;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_b

    .line 288
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v1, v0}, Lme/piebridge/prevent/ui/PreventActivity;->startActivity(Landroid/content/Intent;)V

    .line 290
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private d(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private h()I
    .registers 4

    .prologue
    .line 174
    iget v0, p0, Lme/piebridge/prevent/ui/b;->g:I

    if-nez v0, :cond_16

    .line 175
    const/4 v0, 0x1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lme/piebridge/prevent/ui/b;->g:I

    .line 177
    :cond_16
    iget v0, p0, Lme/piebridge/prevent/ui/b;->g:I

    return v0
.end method

.method private i()Lme/piebridge/prevent/ui/b$c;
    .registers 3

    .prologue
    .line 345
    sget-object v0, Lme/piebridge/prevent/ui/b;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$c;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/piebridge/prevent/ui/PreventActivity;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 380
    iget-boolean v0, p0, Lme/piebridge/prevent/ui/b;->i:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-nez v0, :cond_9

    .line 399
    :cond_8
    return-void

    .line 383
    :cond_9
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 384
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->getCount()I

    move-result v4

    .line 385
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_8

    .line 386
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 385
    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 390
    :cond_2d
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 391
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lme/piebridge/prevent/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 392
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/b$f;->a(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 393
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    .line 394
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    invoke-static {v5, v0}, Lme/piebridge/prevent/ui/a/i;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 395
    :cond_5c
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    if-eqz v1, :cond_29

    .line 396
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    invoke-static {v5, v0}, Lme/piebridge/prevent/ui/a/i;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    :cond_9
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(Z)V
    .registers 4

    .prologue
    .line 310
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    if-eqz v0, :cond_1b

    .line 311
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0, v0, p1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/PreventActivity;Z)V

    .line 312
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 313
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    :cond_1b
    return-void
.end method

.method protected abstract c()Z
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-eqz v1, :cond_1b

    .line 332
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 334
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    if-nez v1, :cond_1c

    .line 336
    :goto_13
    new-instance v1, Lme/piebridge/prevent/ui/b$c;

    invoke-direct {v1, v2, v0}, Lme/piebridge/prevent/ui/b$c;-><init>(II)V

    invoke-direct {p0, v1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/b$c;)V

    .line 338
    :cond_1b
    return-void

    .line 335
    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_13
.end method

.method public f()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->b()V

    .line 377
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    if-eqz v0, :cond_9

    .line 403
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->notifyDataSetChanged()V

    .line 405
    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/b;->registerForContextMenu(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/PreventActivity;

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    .line 80
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    if-eqz v0, :cond_31

    .line 81
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_notification"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_32

    move v0, v1

    :goto_26
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lme/piebridge/prevent/ui/b;->j:Z

    .line 82
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/PreventActivity;Z)V

    .line 84
    :cond_31
    return-void

    .line 81
    :cond_32
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    .line 228
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 229
    :cond_6
    const/4 v0, 0x0

    .line 232
    :goto_7
    return v0

    .line 231
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 232
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/b$f;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11

    .prologue
    const v6, 0x7f05003b

    const v5, 0x7f05002e

    const v4, 0x7f050005

    const v3, 0x7f050003

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1, p3}, Lme/piebridge/prevent/ui/b;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 206
    :cond_13
    :goto_13
    return-void

    .line 189
    :cond_14
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 190
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 191
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 192
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 193
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v1}, Lme/piebridge/prevent/ui/b;->a(Landroid/view/ContextMenu;Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_33
    invoke-interface {p1, v2, v3, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 196
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lme/piebridge/prevent/ui/b;->a(Landroid/view/Menu;Ljava/lang/String;)V

    .line 197
    iget-object v1, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lme/piebridge/prevent/ui/b;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 198
    invoke-interface {p1, v2, v5, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 200
    :cond_46
    iget-boolean v0, v0, Lme/piebridge/prevent/ui/b$f;->k:Z

    if-eqz v0, :cond_4d

    .line 201
    invoke-interface {p1, v2, v6, v2, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 203
    :cond_4d
    sget-boolean v0, Lme/piebridge/prevent/ui/b;->j:Z

    if-eqz v0, :cond_13

    .line 204
    invoke-interface {p1, v2, v4, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_13
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 114
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    const v0, 0x7f09000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->d:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->d:Landroid/view/View;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    .line 117
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->e:Landroid/widget/CheckBox;

    new-instance v2, Lme/piebridge/prevent/ui/b$1;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/b$1;-><init>(Lme/piebridge/prevent/ui/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->d:Landroid/view/View;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->f:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->f:Landroid/widget/EditText;

    new-instance v2, Lme/piebridge/prevent/ui/b$2;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/b$2;-><init>(Lme/piebridge/prevent/ui/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v0, p0, Lme/piebridge/prevent/ui/b;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 143
    return-object v1
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->e()V

    .line 89
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 90
    iput-object v0, p0, Lme/piebridge/prevent/ui/b;->b:Lme/piebridge/prevent/ui/PreventActivity;

    .line 91
    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/b;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .prologue
    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 165
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .prologue
    .line 160
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .prologue
    .line 154
    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lme/piebridge/prevent/ui/b;->i:Z

    .line 155
    return-void

    .line 154
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->e()V

    .line 170
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 171
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 150
    return-void
.end method
