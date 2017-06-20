.class Lme/piebridge/prevent/ui/b$a$a;
.super Landroid/widget/Filter;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b$a;


# direct methods
.method private constructor <init>(Lme/piebridge/prevent/ui/b$a;)V
    .registers 2

    .prologue
    .line 641
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/b$a;Lme/piebridge/prevent/ui/b$1;)V
    .registers 3

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/b$a$a;-><init>(Lme/piebridge/prevent/ui/b$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 4

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->d(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 690
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->e(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 691
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->c(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 692
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->b(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 689
    :goto_19
    return v0

    .line 692
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private b(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 696
    const-string v2, "-sg"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 697
    invoke-virtual {p2}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-static {v2}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_18
    move v1, v0

    .line 701
    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v0, v1

    .line 697
    goto :goto_18

    .line 698
    :cond_1c
    const-string v2, "-3g"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 699
    invoke-virtual {p2}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-static {v2}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_32
    move v1, v0

    goto :goto_19
.end method

.method private c(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 4

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->f(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 706
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->g(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 707
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->h(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 708
    invoke-direct {p0, p1, p2}, Lme/piebridge/prevent/ui/b$a$a;->i(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 705
    :goto_19
    return v0

    .line 708
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 5

    .prologue
    .line 712
    const-string v0, "-a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p2, Lme/piebridge/prevent/ui/b$b;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2d

    iget-object v0, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2b
    const/4 v0, 0x1

    .line 712
    :goto_2c
    return v0

    .line 714
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private e(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 4

    .prologue
    .line 718
    const-string v0, "-3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private f(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 4

    .prologue
    .line 722
    const-string v0, "-s"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private g(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 4

    .prologue
    .line 726
    const-string v0, "-g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lme/piebridge/prevent/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private h(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 5

    .prologue
    .line 730
    const-string v0, "-r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$a;)Lme/piebridge/prevent/ui/PreventActivity;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private i(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z
    .registers 5

    .prologue
    .line 734
    const-string v0, "-e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$a;)Lme/piebridge/prevent/ui/PreventActivity;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 10

    .prologue
    .line 644
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 646
    const/4 v0, 0x0

    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 648
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$a;->a:Lme/piebridge/prevent/ui/b;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 649
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 653
    :goto_17
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->b(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_29

    .line 654
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v4}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$a;Ljava/util/Set;)Ljava/util/Set;

    .line 656
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 657
    if-nez v2, :cond_5e

    .line 658
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->c(Lme/piebridge/prevent/ui/b$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 659
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->b(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v1}, Lme/piebridge/prevent/ui/b$a;->d(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 672
    :cond_48
    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 673
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 674
    return-object v3

    .line 651
    :cond_51
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_17

    .line 661
    :cond_5e
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->b(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 662
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->c(Lme/piebridge/prevent/ui/b$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_71
    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$b;

    .line 663
    if-eqz v1, :cond_8d

    iget-object v6, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v6}, Lme/piebridge/prevent/ui/b$a;->e(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, v0, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 666
    :cond_8d
    invoke-direct {p0, v2, v0}, Lme/piebridge/prevent/ui/b$a$a;->a(Ljava/lang/String;Lme/piebridge/prevent/ui/b$b;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 667
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v6, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v6}, Lme/piebridge/prevent/ui/b$a;->b(Lme/piebridge/prevent/ui/b$a;)Ljava/util/Set;

    move-result-object v6

    iget-object v0, v0, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_71
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6

    .prologue
    .line 680
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/piebridge/prevent/ui/b$a;->setNotifyOnChange(Z)V

    .line 681
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->clear()V

    .line 682
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$b;

    .line 683
    iget-object v2, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v2, v0}, Lme/piebridge/prevent/ui/b$a;->add(Ljava/lang/Object;)V

    goto :goto_13

    .line 685
    :cond_25
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$a;->a:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->notifyDataSetChanged()V

    .line 686
    return-void
.end method
