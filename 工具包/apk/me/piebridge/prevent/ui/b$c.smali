.class Lme/piebridge/prevent/ui/b$c;
.super Ljava/lang/Object;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lme/piebridge/prevent/ui/b$c;->a:I

    .line 413
    iput p2, p0, Lme/piebridge/prevent/ui/b$c;->b:I

    .line 414
    return-void
.end method
