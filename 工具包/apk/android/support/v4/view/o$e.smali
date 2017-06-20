.class Landroid/support/v4/view/o$e;
.super Landroid/support/v4/view/o$c;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/o$e;->b:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1343
    invoke-direct {p0}, Landroid/support/v4/view/o$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .registers 4

    .prologue
    .line 1369
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1371
    return-void

    .line 1370
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/view/b;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 1348
    invoke-static {p1, p2}, Landroid/support/v4/view/q;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
