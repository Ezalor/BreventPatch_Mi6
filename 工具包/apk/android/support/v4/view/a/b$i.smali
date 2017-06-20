.class Landroid/support/v4/view/a/b$i;
.super Landroid/support/v4/view/a/b$h;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1912
    invoke-direct {p0}, Landroid/support/v4/view/a/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1917
    invoke-static {p1}, Landroid/support/v4/view/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
