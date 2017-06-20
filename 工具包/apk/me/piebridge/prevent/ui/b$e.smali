.class Lme/piebridge/prevent/ui/b$e;
.super Landroid/os/AsyncTask;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/Set",
        "<",
        "Lme/piebridge/prevent/ui/b$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Lme/piebridge/prevent/ui/a/e;

.field private c:Lme/piebridge/prevent/ui/b$a;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lme/piebridge/prevent/ui/PreventActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b$a;)V
    .registers 4

    .prologue
    .line 747
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 748
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$e;->d:Ljava/lang/ref/WeakReference;

    .line 749
    iput-object p2, p0, Lme/piebridge/prevent/ui/b$e;->c:Lme/piebridge/prevent/ui/b$a;

    .line 750
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lme/piebridge/prevent/ui/b$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 769
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/PreventActivity;

    .line 770
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 771
    if-nez v0, :cond_13

    move-object v0, v4

    .line 791
    :goto_12
    return-object v0

    .line 774
    :cond_13
    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 775
    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v7

    .line 777
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->c:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 778
    new-array v5, v2, [Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-virtual {p0, v5}, Lme/piebridge/prevent/ui/b$e;->publishProgress([Ljava/lang/Object;)V

    .line 781
    const/4 v1, 0x0

    :try_start_40
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_43} :catch_4d

    move-result-object v1

    move-object v5, v1

    .line 785
    :goto_45
    if-eqz v5, :cond_6f

    iget-boolean v1, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_51

    move v1, v3

    .line 786
    goto :goto_26

    .line 782
    :catch_4d
    move-exception v1

    .line 783
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_45

    .line 788
    :cond_51
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->b:Lme/piebridge/prevent/ui/a/e;

    invoke-virtual {v1, v5}, Lme/piebridge/prevent/ui/a/e;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v9

    .line 789
    new-instance v10, Lme/piebridge/prevent/ui/b$b;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v10, v0, v9, v1}, Lme/piebridge/prevent/ui/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v10, v0}, Lme/piebridge/prevent/ui/b$b;->a(I)Lme/piebridge/prevent/ui/b$b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 790
    goto :goto_26

    :cond_6d
    move-object v0, v4

    .line 791
    goto :goto_12

    :cond_6f
    move v1, v3

    goto :goto_26
.end method

.method protected a(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lme/piebridge/prevent/ui/b$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 804
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$b;

    .line 805
    iget-object v2, p0, Lme/piebridge/prevent/ui/b$e;->c:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v2, v0}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$b;)V

    goto :goto_c

    .line 807
    :cond_1e
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2a

    .line 808
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    .line 811
    :cond_2a
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->c:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->c()V

    .line 813
    :cond_2f
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 796
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_18

    .line 797
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 799
    :cond_18
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 740
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$e;->a([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 740
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$e;->a(Ljava/util/Set;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 754
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/PreventActivity;

    .line 755
    if-eqz v0, :cond_43

    .line 756
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    .line 757
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 758
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 759
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 760
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 761
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lme/piebridge/prevent/ui/b$e;->c:Lme/piebridge/prevent/ui/b$a;

    invoke-virtual {v2}, Lme/piebridge/prevent/ui/b$a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 762
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 763
    new-instance v1, Lme/piebridge/prevent/ui/a/e;

    invoke-direct {v1, v0}, Lme/piebridge/prevent/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/piebridge/prevent/ui/b$e;->b:Lme/piebridge/prevent/ui/a/e;

    .line 765
    :cond_43
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 740
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$e;->a([Ljava/lang/Integer;)V

    return-void
.end method
