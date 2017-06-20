.class Lme/piebridge/prevent/ui/b$a;
.super Landroid/widget/ArrayAdapter;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/piebridge/prevent/ui/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lme/piebridge/prevent/ui/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lme/piebridge/prevent/ui/PreventActivity;

.field private final e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/piebridge/prevent/ui/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/Filter;

.field private k:Landroid/view/View;

.field private l:Lme/piebridge/prevent/ui/b$e;


# direct methods
.method public constructor <init>(Lme/piebridge/prevent/ui/b;Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 4

    .prologue
    .line 501
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$a;->a:Lme/piebridge/prevent/ui/b;

    .line 502
    const v0, 0x7f030002

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->f:Ljava/util/List;

    .line 494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    .line 495
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->h:Ljava/util/Set;

    .line 503
    iput-object p2, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    .line 504
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->b:Landroid/content/pm/PackageManager;

    .line 505
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->c:Landroid/view/LayoutInflater;

    .line 506
    new-instance v0, Lme/piebridge/prevent/ui/b$a$1;

    invoke-direct {v0, p0, p1}, Lme/piebridge/prevent/ui/b$a$1;-><init>(Lme/piebridge/prevent/ui/b$a;Lme/piebridge/prevent/ui/b;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 519
    return-void
.end method

.method public constructor <init>(Lme/piebridge/prevent/ui/b;Lme/piebridge/prevent/ui/PreventActivity;Ljava/util/Set;Landroid/view/View;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/piebridge/prevent/ui/PreventActivity;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a;-><init>(Lme/piebridge/prevent/ui/b;Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 523
    iput-object p4, p0, Lme/piebridge/prevent/ui/b$a;->k:Landroid/view/View;

    .line 524
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 525
    new-instance v0, Lme/piebridge/prevent/ui/b$e;

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {v0, v1, p0}, Lme/piebridge/prevent/ui/b$e;-><init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b$a;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->l:Lme/piebridge/prevent/ui/b$e;

    .line 526
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->h:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 527
    if-eqz p5, :cond_29

    .line 528
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 530
    :cond_29
    return-void
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/b$a;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$a;->i:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic a(Lme/piebridge/prevent/ui/b$a;)Lme/piebridge/prevent/ui/PreventActivity;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    return-object v0
.end method

.method static synthetic b(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lme/piebridge/prevent/ui/b$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->h:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 588
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->i:Ljava/util/Set;

    if-nez v0, :cond_18

    .line 589
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 593
    :goto_e
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->a:Lme/piebridge/prevent/ui/b;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    .line 603
    :goto_17
    return-object v0

    .line 591
    :cond_18
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 596
    :cond_1e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 597
    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 599
    iget-object v3, p0, Lme/piebridge/prevent/ui/b$a;->h:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v3, v0}, Lme/piebridge/prevent/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 600
    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    :cond_42
    move-object v0, v1

    .line 603
    goto :goto_17
.end method

.method public a(Lme/piebridge/prevent/ui/b$b;)V
    .registers 3

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$a;->add(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 607
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->l:Lme/piebridge/prevent/ui/b$e;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$e;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 608
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_13

    .line 609
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->l:Lme/piebridge/prevent/ui/b$e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/b$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 613
    :cond_12
    :goto_12
    return-void

    .line 610
    :cond_13
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->l:Lme/piebridge/prevent/ui/b$e;

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    .line 611
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->l:Lme/piebridge/prevent/ui/b$e;

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_12
.end method

.method public c()V
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->k:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 622
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_a
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->a:Lme/piebridge/prevent/ui/b;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b;->c(Lme/piebridge/prevent/ui/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 626
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->a:Lme/piebridge/prevent/ui/b;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 629
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b$a;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 631
    :cond_31
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->g:Ljava/util/Set;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->j:Landroid/widget/Filter;

    if-nez v0, :cond_c

    .line 581
    new-instance v0, Lme/piebridge/prevent/ui/b$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/piebridge/prevent/ui/b$a$a;-><init>(Lme/piebridge/prevent/ui/b$a;Lme/piebridge/prevent/ui/b$1;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$a;->j:Landroid/widget/Filter;

    .line 583
    :cond_c
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->j:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    .line 535
    if-nez p2, :cond_64

    .line 536
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 537
    new-instance v1, Lme/piebridge/prevent/ui/b$f;

    invoke-direct {v1, v7}, Lme/piebridge/prevent/ui/b$f;-><init>(Lme/piebridge/prevent/ui/b$1;)V

    .line 538
    const v0, 0x7f090005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->b:Landroid/widget/CheckBox;

    .line 539
    const v0, 0x7f090006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->c:Landroid/widget/ImageView;

    .line 540
    const v0, 0x7f090007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->d:Landroid/widget/TextView;

    .line 541
    const v0, 0x7f090008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    .line 542
    const v0, 0x7f090009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->f:Landroid/widget/TextView;

    .line 543
    const v0, 0x7f09000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    .line 544
    iget-object v0, v1, Lme/piebridge/prevent/ui/b$f;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lme/piebridge/prevent/ui/b$a;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 545
    iget-object v0, v1, Lme/piebridge/prevent/ui/b$f;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 549
    :cond_64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 550
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/piebridge/prevent/ui/b$b;

    .line 551
    if-nez v1, :cond_73

    .line 575
    :goto_72
    return-object p2

    .line 554
    :cond_73
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->d:Landroid/widget/TextView;

    iget-object v5, v1, Lme/piebridge/prevent/ui/b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    iget-object v5, v1, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-static {v2, v5}, Lme/piebridge/prevent/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 556
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->c:Landroid/widget/ImageView;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b$a;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_9b
    iget-object v2, v1, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    iput-object v2, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    .line 561
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->b:Landroid/widget/CheckBox;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b$a;->h:Ljava/util/Set;

    iget-object v6, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 562
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->b:Landroid/widget/CheckBox;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v5}, Lme/piebridge/prevent/ui/PreventActivity;->e()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 563
    invoke-virtual {v1}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 564
    iget-object v2, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v2}, Lme/piebridge/prevent/ui/PreventActivity;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 568
    :goto_cc
    iget v2, v1, Lme/piebridge/prevent/ui/b$b;->a:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d8

    iget v2, v1, Lme/piebridge/prevent/ui/b$b;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10a

    :cond_d8
    move v2, v4

    :goto_d9
    iput-boolean v2, v0, Lme/piebridge/prevent/ui/b$f;->k:Z

    .line 569
    iget-object v2, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v0, v2}, Lme/piebridge/prevent/ui/b$f;->a(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 570
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->j:Lme/piebridge/prevent/ui/b$d;

    if-eqz v2, :cond_e9

    .line 571
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->j:Lme/piebridge/prevent/ui/b$d;

    invoke-virtual {v2, v4}, Lme/piebridge/prevent/ui/b$d;->cancel(Z)Z

    .line 573
    :cond_e9
    new-instance v2, Lme/piebridge/prevent/ui/b$d;

    iget-object v5, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-direct {v2, v5, v7}, Lme/piebridge/prevent/ui/b$d;-><init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b$1;)V

    iput-object v2, v0, Lme/piebridge/prevent/ui/b$f;->j:Lme/piebridge/prevent/ui/b$d;

    .line 574
    iget-object v2, v0, Lme/piebridge/prevent/ui/b$f;->j:Lme/piebridge/prevent/ui/b$d;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Lme/piebridge/prevent/ui/b$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_72

    .line 566
    :cond_100
    iget-object v2, p0, Lme/piebridge/prevent/ui/b$a;->d:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-virtual {v2}, Lme/piebridge/prevent/ui/PreventActivity;->b()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_cc

    :cond_10a
    move v2, v3

    .line 568
    goto :goto_d9
.end method
