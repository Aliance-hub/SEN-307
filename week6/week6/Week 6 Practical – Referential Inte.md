# ***Week 6 Practical – Referential Integrity***



In Part 4, I encountered Error 1451 when I tried to delete a department that still had a student assigned to it. MySQL refused the deletion because of the foreign key constraint. I fixed the problem by moving the student to the Software Engineering department before deleting the original department. Another possible solution is to use ON DELETE CASCADE, which automatically deletes dependent records when the parent record is deleted.

