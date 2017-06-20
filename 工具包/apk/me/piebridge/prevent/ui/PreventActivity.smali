.class public Lme/piebridge/prevent/ui/PreventActivity;
.super Landroid/app/Activity;
.source "PreventActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/ui/PreventActivity$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Landroid/view/MenuItem;

.field private h:Landroid/view/MenuItem;

.field private i:Landroid/app/ProgressDialog;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/Handler;

.field private final o:Ljava/lang/Object;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/piebridge/prevent/ui/PreventActivity;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->j:Ljava/lang/Integer;

    .line 66
    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->k:Ljava/lang/Integer;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->o:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    .prologue
    .line 49
    sput-object p0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lme/piebridge/prevent/ui/PreventActivity;->getString(I)Ljava/lang/String;

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

    .line 434
    if-nez p1, :cond_62

    .line 435
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 439
    :goto_37
    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 440
    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$8;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$8;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 446
    const v1, 0x104000a

    new-instance v2, Lme/piebridge/prevent/ui/PreventActivity$9;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/PreventActivity$9;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    const v1, 0x7f050036

    new-instance v2, Lme/piebridge/prevent/ui/PreventActivity$10;

    invoke-direct {v2, p0}, Lme/piebridge/prevent/ui/PreventActivity$10;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 459
    return-void

    .line 437
    :cond_62
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_37
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/PreventActivity;I)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->j(I)V

    return-void
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(IZ)Z
    .registers 5

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->k(I)Lme/piebridge/prevent/ui/b;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_19

    .line 522
    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->e()V

    .line 523
    invoke-virtual {v0, p2}, Lme/piebridge/prevent/ui/b;->b(Z)V

    .line 524
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p1, v1, :cond_17

    .line 525
    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->f()V

    .line 527
    :cond_17
    const/4 v0, 0x1

    .line 530
    :goto_18
    return v0

    .line 529
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment is null in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->c(Ljava/lang/String;)V

    .line 530
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v0, v2, :cond_d

    move v0, v1

    .line 325
    :goto_c
    return v0

    .line 320
    :cond_d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 322
    goto :goto_c

    .line 325
    :cond_25
    const/4 v0, 0x1

    goto :goto_c
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/PreventActivity;)Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->q:Z

    return v0
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/PreventActivity;Z)Z
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->a(Z)Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 566
    .line 567
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/i;->b()I

    move-result v2

    move v1, v0

    .line 568
    :goto_c
    if-ge v1, v2, :cond_18

    .line 569
    invoke-direct {p0, v1, p1}, Lme/piebridge/prevent/ui/PreventActivity;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 570
    const/4 v0, 0x1

    .line 568
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 573
    :cond_18
    return v0
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/PreventActivity;I)I
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lme/piebridge/prevent/ui/PreventActivity;->r:I

    return p1
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 547
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->v()Lme/piebridge/prevent/ui/b;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_9

    .line 549
    invoke-virtual {v0, p1}, Lme/piebridge/prevent/ui/b;->a(Ljava/lang/String;)V

    .line 551
    :cond_9
    return-void
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->k()V

    return-void
.end method

.method private b(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    const/4 v0, 0x1

    .line 334
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic c(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->j()V

    return-void
.end method

.method static synthetic c(Lme/piebridge/prevent/ui/PreventActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lme/piebridge/prevent/ui/PreventActivity;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->t()V

    return-void
.end method

.method static synthetic f(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->s()V

    return-void
.end method

.method private f(I)Z
    .registers 4

    .prologue
    .line 298
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 299
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic g(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Map;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    return-object v0
.end method

.method private g(I)Z
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->b(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic h()Ljava/util/Map;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->e:Ljava/util/Map;

    return-object v0
.end method

.method private h(I)V
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    .line 309
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->f(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    :cond_d
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    if-eqz v0, :cond_1a

    .line 312
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->g(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :cond_1a
    return-void
.end method

.method static synthetic h(Lme/piebridge/prevent/ui/PreventActivity;)Z
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->y()Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->p:Z

    .line 140
    const v0, 0x7f050037

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->j(I)V

    .line 141
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$1;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$1;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    const-wide/16 v2, 0x100

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method static synthetic i(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->l()V

    return-void
.end method

.method private i(I)Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 365
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 366
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 367
    const v1, 0x7f050030

    if-ne p1, v1, :cond_56

    .line 368
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 369
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 370
    sget-object v6, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    sget-object v2, Lme/piebridge/prevent/ui/PreventActivity;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    move v2, v3

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_47
    move v2, v4

    goto :goto_3f

    .line 372
    :cond_49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->o()V

    .line 373
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->p()V

    .line 384
    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 385
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->f()V

    .line 386
    return v3

    .line 374
    :cond_56
    const v1, 0x7f050035

    if-ne p1, v1, :cond_87

    .line 375
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v1, v4}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 376
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    sget-object v4, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 379
    :cond_80
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->o()V

    .line 380
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->p()V

    goto :goto_4f

    .line 381
    :cond_87
    const v1, 0x7f05003f

    if-ne p1, v1, :cond_4f

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/piebridge/prevent/ui/UserGuideActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f
.end method

.method private j()V
    .registers 2

    .prologue
    .line 176
    new-instance v0, Lme/piebridge/prevent/ui/PreventActivity$7;

    invoke-direct {v0, p0}, Lme/piebridge/prevent/ui/PreventActivity$7;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private j(I)V
    .registers 4

    .prologue
    .line 405
    iget-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->q:Z

    if-eqz v0, :cond_5

    .line 416
    :goto_4
    return-void

    .line 408
    :cond_5
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    if-nez v0, :cond_10

    .line 409
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    .line 411
    :cond_10
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 412
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 413
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 414
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_4
.end method

.method static synthetic j(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->x()V

    return-void
.end method

.method static synthetic k(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method private k(I)Lme/piebridge/prevent/ui/b;
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/d;

    invoke-virtual {v0, p1}, Lme/piebridge/prevent/ui/d;->d(I)Lme/piebridge/prevent/ui/b;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-static {}, Lme/piebridge/prevent/a/f;->a()V

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    const/high16 v0, 0x50000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    const-string v0, "me.piebridge.prevent.GET_PACKAGES"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v0, "prevent"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    const-string v0, "sending get prevent packages broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 195
    const-string v2, "android.permission.SHUTDOWN"

    iget-object v3, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lme/piebridge/prevent/ui/PreventActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method static synthetic l(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 199
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->s:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 200
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->m()V

    .line 204
    :goto_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    const/high16 v0, 0x50000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const-string v0, "me.piebridge.prevent.GET_PROCESSES"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v0, "prevent"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    const-string v0, "sending get processes broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 209
    const-string v2, "android.permission.SHUTDOWN"

    iget-object v3, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lme/piebridge/prevent/ui/PreventActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 210
    return-void

    .line 202
    :cond_36
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->y()Z

    goto :goto_8
.end method

.method private m()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 213
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    const/high16 v0, 0x50000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    const-string v0, "me.piebridge.prevent.GET_INFO"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v0, "prevent"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    const-string v0, "sending get info broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 218
    const-string v2, "android.permission.SHUTDOWN"

    iget-object v3, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lme/piebridge/prevent/ui/PreventActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 219
    return-void
.end method

.method private n()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->a(Landroid/content/Context;)V

    .line 265
    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->j:Ljava/lang/Integer;

    .line 266
    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->k:Ljava/lang/Integer;

    .line 267
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->recreate()V

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method private o()V
    .registers 1

    .prologue
    .line 348
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->w()V

    .line 349
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 352
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->v()Lme/piebridge/prevent/ui/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/b;->a(Z)V

    .line 353
    return-void
.end method

.method private q()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 421
    :try_start_5
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 422
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_29} :catch_2e

    move-result v1

    if-eqz v1, :cond_2d

    .line 423
    :cond_2c
    const/4 v0, 0x1

    .line 428
    :cond_2d
    :goto_2d
    return v0

    .line 425
    :catch_2e
    move-exception v1

    goto :goto_2d
.end method

.method private r()I
    .registers 2

    .prologue
    .line 462
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->q()Z

    move-result v0

    if-nez v0, :cond_a

    .line 463
    const v0, 0x7f050026

    .line 465
    :goto_9
    return v0

    :cond_a
    const v0, 0x7f05002a

    goto :goto_9
.end method

.method private s()V
    .registers 1

    .prologue
    .line 470
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/h;->a(Landroid/content/Context;)V

    .line 471
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 474
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->q()Z

    move-result v0

    if-nez v0, :cond_14

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->u()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->startActivity(Landroid/content/Intent;)V

    .line 477
    :cond_14
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->finish()V

    .line 478
    return-void
.end method

.method private u()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 481
    const-string v0, "package"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private v()Lme/piebridge/prevent/ui/b;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->k(I)Lme/piebridge/prevent/ui/b;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 536
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/i;->b()I

    move-result v3

    move v0, v1

    .line 537
    :goto_12
    if-ge v0, v3, :cond_21

    .line 538
    if-ne v0, v2, :cond_1c

    .line 539
    invoke-direct {p0, v0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->a(IZ)Z

    .line 537
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 541
    :cond_1c
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lme/piebridge/prevent/ui/PreventActivity;->a(IZ)Z

    goto :goto_19

    .line 544
    :cond_21
    return-void
.end method

.method private x()V
    .registers 3

    .prologue
    .line 554
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->v()Lme/piebridge/prevent/ui/b;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_e

    .line 556
    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$2;

    invoke-direct {v1, p0, v0}, Lme/piebridge/prevent/ui/PreventActivity$2;-><init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b;)V

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    :cond_e
    return-void
.end method

.method private y()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->s:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 589
    :cond_5
    :goto_5
    return v0

    .line 580
    :cond_6
    const-string v1, "3.1.2"

    iget-object v2, p0, Lme/piebridge/prevent/ui/PreventActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 583
    new-instance v0, Lme/piebridge/prevent/ui/PreventActivity$3;

    invoke-direct {v0, p0}, Lme/piebridge/prevent/ui/PreventActivity$3;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 589
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private z()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 788
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_3d

    .line 790
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/h;->b(Landroid/content/Context;)V

    .line 791
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 792
    const/high16 v0, 0x50000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    const-string v0, "me.piebridge.prevent.SYSTEM_LOG"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v0, "prevent"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 795
    const-string v0, "sending request log broadcast"

    invoke-static {v0}, Lme/piebridge/prevent/ui/e;->b(Ljava/lang/String;)V

    .line 796
    const v0, 0x7f050037

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->j(I)V

    .line 797
    const-string v2, "android.permission.SHUTDOWN"

    iget-object v3, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lme/piebridge/prevent/ui/PreventActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 799
    :cond_3d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->j:Ljava/lang/Integer;

    if-nez v0, :cond_10

    .line 84
    const/high16 v0, 0x7f010000

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->j:Ljava/lang/Integer;

    .line 86
    :cond_10
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->h(I)V

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/piebridge/prevent/ui/PreventActivity;->a(IZ)Z

    .line 287
    return-void
.end method

.method public a(IFI)V
    .registers 5

    .prologue
    .line 278
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-nez v0, :cond_9

    .line 279
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->h(I)V

    .line 281
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {p0, v2, p2}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 339
    if-eqz p2, :cond_22

    .line 340
    sget-object v2, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    sget-object v3, Lme/piebridge/prevent/ui/PreventActivity;->e:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :goto_1c
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->o()V

    .line 345
    return-void

    :cond_20
    move v0, v1

    .line 340
    goto :goto_15

    .line 342
    :cond_22
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public b()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->k:Ljava/lang/Integer;

    if-nez v0, :cond_11

    .line 91
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->k:Ljava/lang/Integer;

    .line 93
    :cond_11
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 274
    return-void
.end method

.method public c(I)I
    .registers 3

    .prologue
    .line 391
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->e:Ljava/util/Map;

    return-object v0
.end method

.method public d(I)I
    .registers 5

    .prologue
    .line 395
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 396
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 397
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    goto :goto_9
.end method

.method public e(I)I
    .registers 3

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/PreventActivity;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->c(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->h(I)V

    .line 295
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09000f

    if-ne v0, v1, :cond_11

    iget v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->r:I

    if-lez v0, :cond_11

    .line 358
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/g;->b(Landroid/content/Context;)V

    .line 362
    :goto_10
    return-void

    .line 360
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->i(I)Z

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    :try_start_3
    const-string v0, "de.robv.android.xposed.XposedBridge"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-string v1, "disableHooks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-static {v0}, Lme/piebridge/prevent/ui/a/l;->a(Ljava/lang/Class;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_24} :catch_d7

    .line 107
    :goto_24
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->a(Landroid/app/Activity;)V

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->setContentView(I)V

    .line 110
    invoke-static {p0}, Lme/piebridge/prevent/ui/a/k;->b(Landroid/app/Activity;)V

    .line 112
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 113
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->f:Landroid/view/View;

    .line 114
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v0, Lme/piebridge/prevent/ui/PreventActivity$a;

    invoke-direct {v0, p0, v6}, Lme/piebridge/prevent/ui/PreventActivity$a;-><init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/PreventActivity$1;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f050031

    invoke-virtual {p0, v1}, Lme/piebridge/prevent/ui/PreventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->b:[Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 122
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lme/piebridge/prevent/ui/d;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lme/piebridge/prevent/ui/PreventActivity;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lme/piebridge/prevent/ui/d;-><init>(Landroid/app/FragmentManager;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/i;)V

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreventUI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->n:Landroid/os/Handler;

    .line 129
    const-string v0, "me.piebridge.prevent.NOT_SUPPORTED"

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/PreventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 130
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->s()V

    .line 136
    :goto_d2
    return-void

    .line 134
    :cond_d3
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->i()V

    goto :goto_d2

    .line 104
    :catch_d7
    move-exception v0

    goto/16 :goto_24
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    .prologue
    const v5, 0x7f050036

    const v4, 0x7f050035

    const v0, 0x7f050030

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 235
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 236
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    .line 237
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 238
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 239
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    invoke-interface {p1, v2, v4, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    .line 241
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 242
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 244
    const v0, 0x7f05003a

    const v1, 0x7f05003a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 245
    invoke-interface {p1, v2, v5, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 246
    const v0, 0x7f05003f

    const v1, 0x7f05003f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 253
    const v1, 0x7f05003a

    if-ne v0, v1, :cond_e

    .line 254
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->n()Z

    move-result v0

    .line 259
    :goto_d
    return v0

    .line 255
    :cond_e
    const v1, 0x7f050036

    if-ne v0, v1, :cond_18

    .line 256
    invoke-direct {p0}, Lme/piebridge/prevent/ui/PreventActivity;->z()V

    .line 257
    const/4 v0, 0x1

    goto :goto_d

    .line 259
    :cond_18
    invoke-direct {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->i(I)Z

    move-result v0

    goto :goto_d
.end method

.method protected onRestart()V
    .registers 5

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 154
    iget-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->p:Z

    if-eqz v0, :cond_1f

    .line 155
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$5;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$5;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    const-wide/16 v2, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->m:Landroid/os/Handler;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$6;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$6;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    const-wide/16 v2, 0x500

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :cond_1f
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/i;->c()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 763
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 764
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 765
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lme/piebridge/prevent/ui/PreventActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->q:Z

    .line 768
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->n:Landroid/os/Handler;

    new-instance v1, Lme/piebridge/prevent/ui/PreventActivity$4;

    invoke-direct {v1, p0}, Lme/piebridge/prevent/ui/PreventActivity$4;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lme/piebridge/prevent/ui/PreventActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 782
    const/4 v0, 0x0

    sput-object v0, Lme/piebridge/prevent/ui/PreventActivity;->d:Ljava/util/Map;

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/piebridge/prevent/ui/PreventActivity;->q:Z

    .line 785
    return-void
.end method
