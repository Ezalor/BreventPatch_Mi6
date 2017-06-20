.class Landroid/support/v4/d/e;
.super Ljava/lang/Object;
.source "TextViewCompatGingerbread.java"


# direct methods
.method static a(Landroid/widget/TextView;I)V
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    return-void
.end method
