.class Lme/piebridge/prevent/ui/b$d;
.super Landroid/os/AsyncTask;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lme/piebridge/prevent/ui/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
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
.method private constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 3

    .prologue
    .line 820
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 821
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    .line 822
    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/PreventActivity;Lme/piebridge/prevent/ui/b$1;)V
    .registers 3

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lme/piebridge/prevent/ui/b$d;-><init>(Lme/piebridge/prevent/ui/PreventActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lme/piebridge/prevent/ui/b$f;
    .registers 7

    .prologue
    .line 826
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 827
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/piebridge/prevent/ui/PreventActivity;

    .line 828
    if-nez v1, :cond_10

    .line 838
    :goto_f
    return-object v0

    .line 831
    :cond_10
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Lme/piebridge/prevent/ui/b$b;

    .line 833
    :try_start_15
    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lme/piebridge/prevent/ui/b$f;->h:Landroid/graphics/drawable/Drawable;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_21} :catch_30

    .line 837
    :goto_21
    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v2, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    goto :goto_f

    .line 834
    :catch_30
    move-exception v3

    goto :goto_21
.end method

.method protected a(Lme/piebridge/prevent/ui/b$f;)V
    .registers 5

    .prologue
    .line 843
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/PreventActivity;

    .line 844
    if-eqz v0, :cond_29

    .line 845
    iget-object v1, p1, Lme/piebridge/prevent/ui/b$f;->c:Landroid/widget/ImageView;

    iget-object v2, p1, Lme/piebridge/prevent/ui/b$f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    iget-object v1, p1, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    iget-object v2, p1, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    invoke-static {v0, v2}, Lme/piebridge/prevent/ui/a/i;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p1, Lme/piebridge/prevent/ui/b$f;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v0, p1, Lme/piebridge/prevent/ui/b$f;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    :cond_29
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 816
    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$d;->a([Ljava/lang/Object;)Lme/piebridge/prevent/ui/b$f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 816
    check-cast p1, Lme/piebridge/prevent/ui/b$f;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$d;->a(Lme/piebridge/prevent/ui/b$f;)V

    return-void
.end method
