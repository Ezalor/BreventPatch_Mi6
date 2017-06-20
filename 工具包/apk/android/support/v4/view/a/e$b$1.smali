.class Landroid/support/v4/view/a/e$b$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Landroid/support/v4/view/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/a/e$b;->a(Landroid/support/v4/view/a/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/e;

.field final synthetic b:Landroid/support/v4/view/a/e$b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/e$b;Landroid/support/v4/view/a/e;)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v4/view/a/e$b$1;->b:Landroid/support/v4/view/a/e$b;

    iput-object p2, p0, Landroid/support/v4/view/a/e$b$1;->a:Landroid/support/v4/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/view/a/e$b$1;->a:Landroid/support/v4/view/a/e;

    .line 82
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/e;->a(I)Landroid/support/v4/view/a/b;

    move-result-object v0

    .line 83
    if-nez v0, :cond_a

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v4/view/a/e$b$1;->a:Landroid/support/v4/view/a/e;

    .line 64
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/e;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 65
    if-nez v3, :cond_a

    .line 66
    const/4 v0, 0x0

    .line 74
    :goto_9
    return-object v0

    .line 68
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 70
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_28

    .line 71
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/b;

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_28
    move-object v0, v1

    .line 74
    goto :goto_9
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/view/a/e$b$1;->a:Landroid/support/v4/view/a/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/e;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
